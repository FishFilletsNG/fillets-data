file_include("script/prog_compatible.lua")

-- -----------------------------------------------------------------
-- Init
-- -----------------------------------------------------------------
local function prog_init()
    initModels()
    sound_playMusic("music/rybky03.ogg")
    local pokus = getRestartCount()

    local function prog_init_wall()
        local uvod
        local setk
        local prehnala
        local pom1, pom2, pomb1, pomb2 = 0, 0, false, false

        switch(pokus){
            [1] = function() 
                uvod = 0
            end,
            [2] = function() 
                uvod = 1
            end,
            default = function() 
                uvod = random(4)
            end,
        }
        setk = 0
        if pokus == 1 then
            prehnala = 22
        else 
            prehnala = 21
        end

        return function()
            if isReady(small) and isReady(big) and no_dialog() then
                if uvod < 3 then
                    switch(uvod){
                        [0] = function() 
                            addm(random(30), "sch-m-spadlo")
                        end,
                        [1] = function() 
                            addm(random(30), "sch-m-spadlo")
                            addv(random(30), "sch-v-lastura")
                        end,
                        [2] = function() 
                            addv(random(30), "sch-v-lastura")
                        end,
                    }
                    uvod = 3
                elseif plzik.X >= prehnala then
                    addm(random(40), "sch-m-moc"..random(3))
                    prehnala = 100
                elseif setk == 0 and plzik.X == 10 and plzik.Y == 14 then
                    addv(random(40), "sch-v-setkani")
                    setk = 1
                end
            end
        end
    end
    local function prog_init_plzik()
        local stav
        local pom1, pom2, pomb1, pomb2 = 0, 0, false, false

        stav = 0

        return function()
            if plzik.dir ~= dir_no then
                stav = 15
            end
            if modelEquals(-1, plzik.X + 1, plzik.Y + 2) then
                stav = 10
            end
            switch(stav){
                [0] = function() 
                    plzik.afaze = 0
                    if random(100) < 2 then
                        stav = stav + 1
                    end
                end,
                [1] = function() 
                    plzik.afaze = 5
                    stav = stav + 1
                end,
                [2] = function() 
                    plzik.afaze = random(3) + 1
                    stav = stav + 1
                end,
                [3] = function() 
                    if odd(timer_getCycles()) then
                        if random(100) < 20 then
                            plzik.afaze = random(3) + 1
                        end
                    end
                    if random(1000) < 5 then
                        stav = stav + 1
                    end
                end,
                [4] = function() 
                    plzik.afaze = 5
                    stav = 0
                end,
                [10] = function() 
                    plzik.afaze = 4
                    if modelEquals(-1, plzik.X + 1, plzik.Y + 2) then
                        stav = 21 + random(20)
                    end
                end,
                [15] = function() 
                    plzik.afaze = 5
                    if plzik.dir == dir_no then
                        stav = 21 + random(20)
                    end
                end,
                [20] = function() 
                    stav = 3
                end,
                default = function()
                    if stav >= 21 or stav <= 100 then 
                        stav = stav - 1
                    end
                end,
            }
            plzik:setAnim("default", plzik.afaze)
        end
    end
    local function prog_init_snecek()
        local cinnost
        local smer
        local sour
        local pom1, pom2, pomb1, pomb2 = 0, 0, false, false

        cinnost = 0
        sour = random(6) * 3
        smer = random(2) * 2 - 1

        return function()
            switch(cinnost){
                [0] = function() 
                    if random(100) < 1 then
                        cinnost = 1
                    elseif random(100) < 2 then
                        cinnost = 2
                    end
                end,
                [1] = function() 
                    if random(100) < 3 then
                        cinnost = 0
                    end
                end,
                [2] = function() 
                    if math.mod(sour, 3) == 0 and random(100) < 30 then
                        cinnost = 0
                    elseif math.mod(sour, 3) == 0 and random(100) < 10 then
                        cinnost = 3
                    elseif random(100) < 2 or smer == -1 and sour == 0 or smer == 1 and sour == 15 then
                        smer = -smer
                    elseif smer < 0 then
                        sour = sour - 1
                    elseif smer > 0 then
                        sour = sour + 1
                    end
                end,
                [3] = function() 
                    if random(100) < 3 then
                        cinnost = 2
                    end
                end,
            }
            switch(cinnost){
                [0] = function() 
                    if smer < 0 then
                        snecek.afaze = 15 - sour
                    else 
                        snecek.afaze = 22 + sour
                    end
                end,
                [2] = function() 
                    if smer < 0 then
                        snecek.afaze = 15 - sour
                    else 
                        snecek.afaze = 22 + sour
                    end
                end,
                [1] = function() 
                    if smer < 0 then
                        snecek.afaze = 21 - math.floor(sour / 3)
                    else 
                        snecek.afaze = 38 + math.floor(sour / 3)
                    end
                end,
                [3] = function() 
                    if smer < 0 then
                        snecek.afaze = 21 - math.floor(sour / 3)
                    else 
                        snecek.afaze = 38 + math.floor(sour / 3)
                    end
                end,
            }
            snecek:setAnim("default", snecek.afaze)
        end
    end

    -- --------------------
    local update_table = {}
    local subinit
    subinit = prog_init_wall()
    if subinit then
        table.insert(update_table, subinit)
    end
    subinit = prog_init_plzik()
    if subinit then
        table.insert(update_table, subinit)
    end
    subinit = prog_init_snecek()
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

