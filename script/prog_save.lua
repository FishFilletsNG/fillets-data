
file_include("script/Pickle.lua")

function save()
    local models = getModelsTable()
    local serialized = pickle(models)
    --TEST: save
    print(serialized)
    game_save(serialized)
end

function load()
    local models = getModelsTable()
    if not saved_models then
        error("global variable 'saved_models' is not set")
    end
    local saved_table = unpickle_table(saved_models)

    for model_key, model in pairs(saved_table) do
        for param_key, param in pairs(model) do
            print("TEST: model", model_key, "key", param_key, "param", param)
            models[model.index][param_key] = param
        end
    end
end

