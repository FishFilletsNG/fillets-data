-- -----------------------------------------------------------------
-- These function are called when save or load is made.
-- script_save() ... call level_save(serialized_level)
-- script_load() ... call level_load(saved_moves)
--                   with global variable saved_moves
-- script_loadState() ... use global variable saved_models
--                        to restore model states
-- -----------------------------------------------------------------

file_include("script/share/Pickle.lua")

function script_save()
    local models = getModelsTable()
    local serialized = pickle(models)
    level_save(serialized)
end

function script_load()
    if not saved_moves then
        error("global variable 'saved_moves' is not set")
    end
    level_load(saved_moves)
end

function script_loadState()
    if not saved_models then
        error("global variable 'saved_models' is not set")
    end
    local models = getModelsTable()
    local saved_table = unpickle_table(saved_models)

    --NOTE: methods was not saved.
    for model_key, model in pairs(models) do
        for param_key, param in pairs(model) do
            if nil == saved_table[model_key][param_key] and type(param) == "function" then
                saved_table[model_key][param_key] = param
            end
        end
    end
    setModelsTable(saved_table)
end

