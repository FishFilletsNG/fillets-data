-- -----------------------------------------------------------------
-- These function are called when save or load is made.
-- script_save() ... calls level_save(serialized_level)
-- script_load() ... calls level_load(saved_moves)
--                   with global variable saved_moves
-- script_loadState() ... uses global variable saved_models
--                        to restore model states
-- -----------------------------------------------------------------

file_include("script/share/Pickle.lua")

function script_save()
    local serialized = pickle(getModelsTable())
    level_save(serialized)
end

function script_load()
    if not saved_moves then
        error("global variable 'saved_moves' is not set")
    end
    level_load(saved_moves)
end

local function assignModelAttributes(saved_table)
    local models = getModelsTable()
    --NOTE: don't save objects with cross references
    --NOTE: objects addresses will be different after load
    for model_key, model in pairs(saved_table) do
        for param_key, param in pairs(model) do
            models[model_key][param_key] = param
        end
    end
end

function script_loadState()
    undo_clear_table = true
    if not saved_models then
        error("global variable 'saved_models' is not set")
    end
    local saved_table = unpickle_table(saved_models)
    assignModelAttributes(saved_table)
end

--
-- Functions to enable undo
--
local UNDO_MAX_OVERWRITES = 10
if not undo_stack then
    undo_clear_table = false
    undo_num_overwrites = -1
    undo_stack = {}
end
function script_saveUndo(moves, forceSave)
    if forceSave then
        undo_num_overwrites = 0
    end

    -- A discontinuity in the moves will clear the undo stack.
    -- That limits the memory usage.
    local movesLen = string.len(moves)
    if movesLen <= 1 or undo_clear_table then
        undo_clear_table = false
        undo_stack = {}
    end
    if table.getn(undo_stack) == 0 then
        -- The first known state should be preserved.
        undo_num_overwrites = -1
    end

    if undo_num_overwrites > 0 then
        undo_num_overwrites = undo_num_overwrites - 1
        table.remove(undo_stack)
    elseif undo_num_overwrites == 0 then
        undo_num_overwrites = UNDO_MAX_OVERWRITES
    else
        undo_num_overwrites = undo_num_overwrites + 1
    end

    -- saving the actual model position (after room.prepareRound())
    for index, model in pairs(getModelsTable()) do
        model.X, model.Y = model:getLoc()
    end
    local serialized = pickle(getModelsTable())
    table.insert(undo_stack, {moves=moves, serialized=serialized})
end

function script_loadUndo()
    local saved = table.remove(undo_stack)
    if not saved then
        return
    end

    -- The undo overwrites will be postponed.
    -- They should not overwrite the previous undo and this position.
    undo_num_overwrites = -1
    undo_clear_table = false
    level_load(saved.moves)

    local saved_table = unpickle_string(saved.serialized)
    assignModelAttributes(saved_table)
    for index, model in pairs(getModelsTable()) do
        model_change_setLocation(model.index, model.X, model.Y)
        model_change_setExtraParams(model.index, model.__extra_params)

        if model:isLeft() ~= model.lookLeft then
            model:change_turnSide()
        end
    end
end
