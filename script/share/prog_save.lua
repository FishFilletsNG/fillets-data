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
    undo_stack = {}
    if not saved_models then
        error("global variable 'saved_models' is not set")
    end
    local saved_table = unpickle_table(saved_models)
    assignModelAttributes(saved_table)
end

--
-- Functions to enable undo
--
if not undo_stack then
    undo_stack = {}
end
function script_saveUndo(moves, forceSave)
    -- Saves only every 10th move by default
    local movesLen = string.len(moves)
    if not forceSave and table.getn(undo_stack) > 0 then
        if math.mod(movesLen, 10) ~= 1 then
            print("movesLen", movesLen, table.getn(undo_stack))
            return
        end
    end
    if movesLen <= 1 then
        undo_stack = {}
    end

    for index, model in pairs(getModelsTable()) do
        local extra = model_getExtraParams(model.index)
        model.__extra_params = extra
    end
    local serialized = pickle(getModelsTable())
    table.insert(undo_stack, {moves=moves, serialized=serialized})
end

function script_loadUndo()
    local saved = table.remove(undo_stack)
    if not saved then
        return
    end
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
