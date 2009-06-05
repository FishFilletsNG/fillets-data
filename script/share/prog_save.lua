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
    undo.seen_restarts = nil
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
if not undo then
    undo = {}
    undo.stack = {}
    undo.seen_restarts = getRestartCount()
    undo.num_overwrites = -1
    -- The undo.index points where to save the next undo.
    undo.index = 0
end

local function applyUndoState(state)
    level_load(state.moves)

    local saved_table = unpickle_string(state.serialized)
    assignModelAttributes(saved_table)
    for index, model in pairs(getModelsTable()) do
        model_change_setLocation(model.index, model.X, model.Y)
        model_change_setExtraParams(model.index, model.__extra_params)

        if model:isLeft() ~= model.lookLeft then
            model:change_turnSide()
        end
    end
end

local function collectUndoState(moves)
    -- Saving the actual model position (after room.prepareRound())
    for index, model in pairs(getModelsTable()) do
        model.X, model.Y = model:getLoc()
        model.lookLeft = model:isLeft()
    end
    local serialized = pickle(getModelsTable())
    return {moves=moves, serialized=serialized}
end

local function setupOverwrites(forceSave)
    -- Sets undo.index to do an overwrite or not.
    if forceSave then
        undo.num_overwrites = 0
    end

    -- Any level restart or load will clear the undo stack.
    -- That limits the memory usage.
    if undo.seen_restarts ~= getRestartCount() then
        undo.seen_restarts = getRestartCount()
        undo.num_overwrites = -1
        undo.index = 0
        undo.stack = {}
    end
    if undo.index == 0 then
        -- The first known state should be preserved.
        undo.num_overwrites = -1
    end

    if undo.num_overwrites > 0 then
        undo.index = undo.index - 1
        undo.num_overwrites = undo.num_overwrites - 1
    else
        if undo.num_overwrites == 0 then
            undo.num_overwrites = UNDO_MAX_OVERWRITES
        else
            undo.num_overwrites = undo.num_overwrites + 1
        end
    end
end

local function preventRedo()
    undo.stack[undo.index + 1] = nil
end

local function isTopState(moves)
    local prev = undo.stack[undo.index - 1]
    return prev and prev.moves == moves
end

function script_saveUndo(moves, forceSave)
    if isTopState(moves) then
        return
    end

    setupOverwrites(forceSave)

    undo.stack[undo.index] = collectUndoState(moves)
    undo.index = undo.index + 1
    preventRedo()
end

function script_loadUndo(moves, steps)
    -- Undo has steps == 1
    -- Redo has steps == -1

    local shift = 0
    if isTopState(moves) then
        shift = -1
    end
    local saved = undo.stack[undo.index + shift - steps]
    if not saved then
        return
    end
    -- The next saved undo will overwrite the just loaded undo.
    -- And it itself will not be overwritten,
    -- to keep the max distance between undos.
    undo.index = undo.index - steps
    undo.num_overwrites = -1
    undo.seen_restarts = getRestartCount()

    applyUndoState(saved)
end

