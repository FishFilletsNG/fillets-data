
file_include("script/Pickle.lua")

function script_save()
    local models = getModelsTable()
    local serialized = pickle(models)
    game_save(serialized)
end

function script_load()
    if not saved_moves then
        error("global variable 'saved_moves' is not set")
    end
    game_load(saved_moves)
end

function script_loadState()
    if not saved_models then
        error("global variable 'saved_models' is not set")
    end
    local models = getModelsTable()
    local saved_table = unpickle_table(saved_models)

    for model_key, model in pairs(saved_table) do
        for param_key, param in pairs(model) do
            models[model.index][param_key] = param
        end
    end
end

