file_include("script/prog_compatible.lua")

-- -----------------------------------------------------------------
-- Init
-- -----------------------------------------------------------------
local function prog_init()
    initModels()
    sound_playMusic("music/rybky05.ogg")
    local pokus = getRestartCount()


    -- -------------------------------------------------------------
    local function prog_init_wall()
        local mzaval
        local vzaval
        local nezvladnu
        local lastu
        local matr
        local rozhovor
        local snm
        local nezv
        local uz
        local chud
        local vymena
        local pomv
        local pom1, pom2, pomb1, pomb2 = 0, 0, false, false

        if pokus < 3 then
            mzaval = 0
        elseif random(pokus) < 4 then
            mzaval = 0
        else 
            mzaval = 1
        end
        vzaval = 0
        nezvladnu = 0
        lastu = 0
        matr = 0
        rozhovor = 500 + random(500 + pokus * 42)
        snm = 0
        nezv = 0
        uz = 0
        if random(pokus + 1) > 3 then
            chud = 1
        else 
            chud = 0
        end
        vymena = 0
        pomv = 0

        return function()
            if no_dialog() then
                if isReady(small) and isReady(big) then
                    if mzaval == 0 and small.X > 43 and not small:isLeft() then
                        if random(timer_getCycles()) < 100 then
                            addm(4, "uts-m-otresy")
                        end
                        mzaval = 1
                    end
                    if vzaval == 0 and big.X > 43 and not big:isLeft() then
                        if random(3 + pokus) < 4 then
                            addv(2, "uts-v-projet0")
                        else 
                            addv(2, "uts-v-projet1")
                        end
                        vzaval = 1
                        mzaval = 1
                    end
                    if lastu == 0 and big.X < 7 and lastura.X < 3 and lastura.Y == 11 then
                        lastu = 1
                        addm(11, "uts-m-lastura")
                    end
                    if rozhovor <= timer_getCycles() then
                        rozhovor = rozhovor + 6666 + random(pokus * 42)
                        addv(10, "uts-v-koraly")
                        if pokus < 4 or random(6) > 0 then
                            addm(10, "uts-m-tvorove")
                        end
                        if pokus == 1 or random(4) > 0 then
                            addv(10, "uts-v-mikroskop")
                            addm(10, "uts-m-zivocich")
                            if random(3) > 0 then
                                addm(10, "uts-m-zelvy")
                            end
                            if random(3) > 0 then
                                addm(10, "uts-m-batyskaf")
                            end
                        end
                    end
                    if snm == 0 and matrace.X == 37 and (snek1.X > 40 and snek1.Y == 6 or snek2.X > 40 and snek2.Y == 6) then
                        snm = 1
                        addm(0, "uts-m-snek")
                    end
                    if nezv == 0 and (snek1.Y == 13 or snek2.Y == 13) then
                        nezv = 1
                        addm(2, "uts-m-nezvedneme")
                    end
                    if uz == 0 and (dvere.X > snek1.X or dvere.X > snek2.X) and dvere.Y == 10 then
                        uz = 1
                        addv(6, "uts-v-konecne")
                        if random(pokus + chud * 6) < 4 then
                            addm(7, "uts-m-chudak")
                        end
                        chud = 1
                    end
                    if chud == 0 and (snek1.dir ~= dir_no or snek2.dir ~= dir_no) and random(100) == 1 then
                        chud = 1
                        addm(5, "uts-m-chudak")
                    end
                    if vymena == 0 and matrace.X > 15 and matrace.X < 21 and xdist(matrace, snek1) == 0 and xdist(matrace, snek2) == 0 then
                        pomb1 = snek1.Y + 1 == snek2.Y and snek2.Y + 1 == matrace.Y
                        pomb2 = snek2.Y + 1 == snek1.Y and snek1.Y + 1 == matrace.Y
                        if pomb1 or pomb2 then
                            if pomv == 0 then
                                pomv = 1
                                vymena = 20 + random(300 + pokus)
                            else 
                                pomv = 2
                            end
                        end
                    end
                    if pomv == 2 then
                        vymena = -1
                        pomv = 0
                        addv(5, "uts-v-poradi")
                    end
                end
                if vymena > 0 then
                    vymena = vymena - 1
                end
                if matr == 0 and isReady(small) and dist(small, matrace) < 2 then
                    matr = 1
                    addm(7, "uts-m-matrace")
                end
                if nezvladnu == 0 and small:isOut() and isReady(big) and lastura.X == 11 then
                    nezvladnu = 1
                    addv(20, "uts-v-sam")
                end
            end
        end
    end

    -- -------------------------------------------------------------
    local function prog_init_lastura()
        return function()
            local anim_table = {
                [0] = function() 
                    if random(100) == 1 then
                        lastura.afaze = 1
                    end
                end,
                [1] = function() 
                    if random(10) == 1 then
                        lastura.afaze = random(5)
                    end
                end,
                [5] = function() 
                    lastura.afaze = 4
                end,
                [6] = function() 
                    if random(10) == 1 then
                        lastura.afaze = random(2) + 2
                    end
                end,
            }
            anim_table[2] = anim_table[1]
            anim_table[3] = anim_table[1]
            anim_table[4] = anim_table[1]

            switch(lastura.afaze)(anim_table)

            switch(lastura.dir){
                [dir_up] = function() 
                    lastura.afaze = 5
                end,
                [dir_down] = function() 
                    lastura.afaze = 0
                end,
                [dir_left] = function() 
                    lastura.afaze = 6
                end,
                [dir_right] = function() 
                    lastura.afaze = 1
                end,
            }
            lastura:setAnim("default", lastura.afaze)
        end
    end

    -- -------------------------------------------------------------
    local function prog_init_snek1()
        return function()
            switch(snek1.afaze){
                [0] = function() 
                    if snek1.dir ~= dir_no then
                        snek1.afaze = 1
                    elseif random(50) == 1 then
                        snek1.afaze = 2
                    end
                end,
                [1] = function() 
                    if snek1.dir == dir_no and random(15) == 1 then
                        snek1.afaze = 2
                    end
                end,
                [2] = function() 
                    local choice = random(20)
                    if choice == 1 then
                        snek1.afaze = 1
                    elseif 2 <= choice and choice <= 4 then
                        snek1.afaze = 3
                    end
                end,
                [3] = function() 
                    if random(5) == 1 then
                        snek1.afaze = 0
                    end
                end,
            }
            snek1:setAnim("default", snek1.afaze)
        end
    end

    -- -------------------------------------------------------------
    local function prog_init_snek2()
        return function()
            switch(snek2.afaze){
                [0] = function() 
                    if snek2.dir ~= dir_no then
                        snek2.afaze = 1
                    elseif random(50) == 1 then
                        snek2.afaze = 2
                    end
                end,
                [1] = function() 
                    if snek2.dir == dir_no and random(15) == 1 then
                        snek2.afaze = 2
                    end
                end,
                [2] = function() 
                    local choice = random(20)
                    if choice == 1 then
                        snek2.afaze = 1
                    elseif 2 <= choice and choice <= 4 then
                        snek2.afaze = 3
                    end
                end,
                [3] = function() 
                    if random(5) == 1 then
                        snek2.afaze = 0
                    end
                end,
            }
            snek2:setAnim("default", snek2.afaze)
        end
    end

    -- --------------------
    local update_table = {}
    local subinit
    subinit = prog_init_wall()
    if subinit then
        table.insert(update_table, subinit)
    end
    subinit = prog_init_lastura()
    if subinit then
        table.insert(update_table, subinit)
    end
    subinit = prog_init_snek1()
    if subinit then
        table.insert(update_table, subinit)
    end
    subinit = prog_init_snek2()
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

