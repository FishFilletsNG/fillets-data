file_include("script/prog_compatible.lua")

-- -----------------------------------------------------------------
-- Init
-- -----------------------------------------------------------------
local function prog_init()
    initModels()
    sound_playMusic("music/rybky01.ogg")
    local pokus = getRestartCount()
	local roompole_0 = 0

    local function prog_init_wall()
        local uvod
        local namet
        local pom1, pom2, pomb1, pomb2 = 0, 0, false, false

        uvod = 0
        namet = 0

        return function()
            if metla.X == 12 and (metla.Y == 12 or metla.Y == 13 or metla.Y == 14) and not isReady(big) then
                roompole_0 = 1
            end
            if isReady(small) and isReady(big) and no_dialog() then
                if uvod == 0 then
                    addm(random(40) + 10, "kos-m-uklid"..random(3))
                    addv(random(20), "kos-v-poradek"..random(3))
                    uvod = random(150) + 50
                elseif uvod == 2 then
                    uvod = 1
                    switch(roompole_0){
                        [0] = function() 
                            pom1 = random(2)
                        end,
                        [1] = function() 
                            pom1 = 2
                            roompole_0 = roompole_0 + 1
                        end,
                        [2] = function() 
                            pom1 = random(5)
                        end,
                    }
                    if pom1 < 3 then
                        addv(0, "kos-v-koste0")
                    end
                elseif namet == 0 and random(100) < 3 and metla.Y >= 15 then
                    namet = 1
                    pom1 = random(3)
                    if pom1 > 0 then
                        pom1 = pom1 + 1
                    end
                    addm(40, "kos-m-zamet"..pom1)
                    if random(100) < 70 then
                        addm(random(20) + 10, "kos-m-zamet1")
                    end
                end
            end
        end
    end
    local function prog_init_metla()
        return function()
            if odd(timer_getCycles()) then
                switch(metla.afaze){
                    [0] = function() 
                        if metla.dir == dir_left or metla.dir == dir_right then
                            metla.afaze = 2
                        end
                    end,
                    [1] = function() 
                        if metla.dir == dir_left or metla.dir == dir_right then
                            metla.afaze = 3 - metla.afaze
                        else 
                            metla.afaze = 0
                        end
                    end,
                    [2] = function() 
                        if metla.dir == dir_left or metla.dir == dir_right then
                            metla.afaze = 3 - metla.afaze
                        else 
                            metla.afaze = 0
                        end
                    end,
                }
            end
			metla:setAnim("default", metla.afaze)
        end
    end

    -- --------------------
    local update_table = {}
    local subinit
    subinit = prog_init_wall()
    if subinit then
        table.insert(update_table, subinit)
    end
    subinit = prog_init_metla()
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

