
file_include("script/prog_compatible.lua")

-- -----------------------------------------------------------------
-- Init
-- -----------------------------------------------------------------
function prog_init()
    initModels()
    sound_playMusic("music/rybky02.ogg")

    pokus = getRestartCount()
    oknihach = random(1000) + 500
    if pokus > 1 and random(100) < 20 then
        oknihach = -1
    end
    rada = random(1000) + 1000
    uvod = 0
    restrt = 0
    oost = 0
    zavazim = 0
    zavaziv = 0
    vlevo = 0
end
prog_init()


-- -----------------------------------------------------------------
-- Update
-- -----------------------------------------------------------------
function prog_update()
    if no_dialog and isReady(small) and isReady(big) then
        if oknihach > 0 then
            oknihach = oknihach - 1
        end
        if oknihach < -2 then
            oknihach = oknihach + 1
        end
        if rada > 0 then
            rada = rada - 1
        end
        if uvod == 0 then
            uvod = 1
            if pokus == 1 or random(100) < 70 then
                addv(10, "vrak-v-vraky"..random(3))
            end
            if pokus == 1 or random(100) < 70 then
                addm(10, "vrak-m-vrak"..random(3))
            end
        elseif oknihach == 0 or oknihach > 0 and big.X >= 12 then
            oknihach = -100
            if big.X >= 12 then
                addv(3, "vrak-v-nevejdu"..random(2))
            end
            addm(10, "vrak-m-kupovat"..random(2))
            addm(10, "vrak-m-naco")
            vyber = {}
            for pom2 = 1, 3 + random(2) do
                repeat 
                    pom1 = random(7)
                until not vyber[pom1]
                vyber[pom1] = true
                addm(random(10) + 5, "vrak-m-knihy"..pom1)
            end
            addv(20 + random(20), "vrak-v-vyhodit")
            vyber = {}
            for pom2 = 1, 2 + random(2) do
                repeat 
                    pom1 = random(5)
                until not vyber[pom1]
                vyber[pom1] = true
                addv(random(10) + 5, "vrak-v-knihy"..pom1)
            end
            addm(0, "vrak-m-pohadky")
        elseif rada == 0 then
            rada = -1
            pom1 = random(3) + 1
            if odd(pom1) then
                addv(random(20) + 20, "vrak-v-policky")
            end
            if pom1 >= 2 then
                addm(random(20) + 20, "vrak-m-predmety")
            end
        elseif oknihach == -2 and big.X >= 12 then
            oknihach = -500
            addm(5, "vrak-m-cteni"..random(3))
        elseif oost == 0 and dist(small, sklibak) < 5 and random(100) < 3 then
            oost = 1
            addm(random(10) + 5, "vrak-m-ostnatec")
        elseif zavazim == 0 and (sklibak.X == 10 and sklibak.Y == 31) and dist(small, sklibak) <= 1 then
            oost = 1
            zavazim = 1
            addm(3, "vrak-m-zivocich")
        elseif zavaziv == 0 and (sklibak.X == 8 and sklibak.Y == 5 or sklibak.X == 10 and sklibak.Y == 31) and dist(big, sklibak) <= 1 then
            oost = 1
            zavaziv = 1
            addm(3, "vrak-v-potvurka")
        elseif vlevo == 0 and sklibak.X == 10 and sklibak.Y == 31 and random(100) < 2 then
            vlevo = 1
            addv(5, "vrak-v-snek")
            if trubka.X == trubka.XStart and trubka.Y == trubka.YStart then
                addm(3, "vrak-m-ocel")
                addm(40 + random(40), "vrak-m-restart")
                restrt = 1
            end
        elseif restrt == 0 and sklibak.X < 8 and sklibak.Y == 5 then
            addm(40 + random(40), "vrak-m-restart")
            restrt = 1
        elseif restrt == 0 and sklibak.X > 10 and sklibak.Y == 31 then
            addm(40 + random(40), "vrak-m-restart")
            restrt = 1
        end
    end

    prog_sklibak(sklibak)
end

function prog_sklibak(model)
    if odd(timer_getCycles()) then
        switch (model.afaze) {
            [0] = function() 
                if random(100) < 5 then
                    model.afaze = 1 - model.afaze
                end
                if model.dir ~= dir_no then
                    model.afaze = 2
                end
            end,
            [1] = function() 
                if random(100) < 5 then
                    model.afaze = 1 - model.afaze
                end
                if model.dir ~= dir_no then
                    model.afaze = 2
                end
            end,
            [2] = function() 
                if random(100) < 3 then
                    model.afaze = random(2)
                end
            end,
            default = function() 
                print("FIXME: default case")
            end,
        }
    end
    model:setAnim("default", model.afaze)
end
