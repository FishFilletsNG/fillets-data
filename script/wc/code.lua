file_include("script/prog_compatible.lua")

-- -----------------------------------------------------------------
-- Init
-- -----------------------------------------------------------------
local function prog_init()
    initModels()
    sound_playMusic("music/rybky10.ogg")
    local pokus = getRestartCount()


    -- -------------------------------------------------------------
    local function prog_init_wall()
        local uvod
        local druha
        local timerdruhe
        local omise
        local pom1, pom2, pomb1, pomb2 = 0, 0, false, false

        if pokus == 1 or random(100) < 50 then
            uvod = 1
            druha = random(2) + 2
        else 
            uvod = 2
            druha = random(2) * 2 + 1
        end
        omise = 0
        timerdruhe = random(1000) + 500

        return function()
            if no_dialog() and isReady(small) and isReady(big) then
                if timerdruhe > 0 then
                    timerdruhe = timerdruhe - 1
                end
                pom1 = 0
                if uvod > 0 then
                    pom1 = uvod
                    uvod = 0
                    if pokus ~= 1 then
                        adddel(random(500) + 20)
                    else 
                        adddel(random(20) + 20)
                    end
                elseif timerdruhe == 0 then
                    pom1 = druha
                    timerdruhe = -1
                    adddel(30)
                elseif omise == 0 and small.Y >= 19 then
                    omise = 1
                    addm(10 + random(30), "wc-m-vlezt")
                end
                if pom1 > 0 then
                    switch(pom1){
                        [1] = function() 
                            addm(0, "wc-m-prasecinky")
                            addv(random(10), "wc-v-hygiena")
                        end,
                        [2] = function() 
                            addm(0, "wc-m-hrbitov")
                            addv(random(5), "wc-v-coze")
                            addm(random(10) + 5, "wc-m-nevis")
                        end,
                        [3] = function() 
                            addv(0, "wc-v-oblibene")
                            addm(0, "wc-m-coze")
                            addv(5, "wc-v-neznas")
                            addm(5, "wc-m-sochar")
                            addv(10, "wc-v-zmatek")
                        end,
                    }
                end
            end
        end
    end

    -- --------------------
    local update_table = {}
    local subinit
    subinit = prog_init_wall()
    if subinit then
        table.insert(update_table, subinit)
    end
    return update_table
end
local update_table = prog_init()


-- -----------------------------------------------------------------
-- Update
-- -----------------------------------------------------------------
function prog_update()
    for key, subupdate in pairs(update_table) do
        subupdate()
    end
end

