file_include("script/level_funcs.lua")

createRoom(40, 30, "images/stairs/schody-p.png")

wall = addModel("item_fixed", 0, 0,
[[
........................................
XXX...................XXX.............XX
XXXXXXXXX.............XXXXX.........XXXX
XXXXXXXXXXX..XXXXX...XXXXXX...XXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
....XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
.......XXXXXXXXXXXXXXXXXXXXX......XXXXXX
............XXXXXXX...................XX
..............XXXXX...................XX
XXXX..................................XX
XXXXXX................................XX
XXXXXXXX..............................XX
XXXXXXXXXX............................XX
XXXXXXXXXXX.XXXXXXXX............XXXXXXXX
XXXXXXXXXXXXXXXXXXXX..........XXXXXXXXXX
XXXXXXXXXXXXXXXXXXXX........XXXXXXXXXXXX
XX........................XXXXXX......XX
XX......................XXXXXX........XX
XX....................XXXXXX............
XX..................XXXXXX..............
XX................XXXXXX................
XX..............XXXXXX..................
XX............XXXXXX..................XX
XX..........XXXXXX....................XX
XX........XXXXXX......................XX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/stairs/schody-w.png")

plzik = addModel("item_light", 6, 25,
[[
XX
.X
]])
addItemAnim(plzik, "images/stairs/plz_00.png")
-- extsize=6; first="plz0.BMP"

item_light = addModel("item_light", 9, 10,
[[
X
X
X
X
]])
addItemAnim(item_light, "images/stairs/lebeda.png")

small = addModel("fish_small", 6, 22,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 6, 20,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

item_light = addModel("item_light", 30, 23,
[[
XXXXXXX
.X...X.
.X...X.
.X...X.
]])
addItemAnim(item_light, "images/stairs/stul.png")

item_light = addModel("item_light", 34, 20,
[[
X..X
X..X
XXXX
...X
...X
]])
addItemAnim(item_light, "images/stairs/zidle_m.png")

item_light = addModel("item_light", 29, 20,
[[
X..X
X..X
XXXX
X...
X...
]])
addItemAnim(item_light, "images/stairs/zidle_v.png")

snecek = addModel("item_light", 15, 2,
[[
XXXXXX
...XXX
]])
addItemAnim(snecek, "images/stairs/snek_00.png")
-- extsize=43; first="snek0.BMP"


-- -----------------------------------------------------------------
-- Fonts
dialog_addFont("small", "font/small.png")
dialog_addFont("big", "font/big.png")

-- -----------------------------------------------------------------
-- Dialogs
dialog_addDialog("sch-m-spadlo", "english", "small",
    "sound/schody/sch-m-spadlo.wav",
    "Something fell here again.")
dialog_addDialog("sch-v-lastura", "english", "big",
    "sound/schody/sch-v-lastura.wav",
    "It`s some kind of shell. We`ll probably have to push it upstairs again.")

dialog_addDialog("sch-v-setkani", "english", "big",
    "sound/schody/sch-v-setkani.wav",
    "I can see it now: 'Shell Meets Flowerpot`. That`s almost like an iron and a sewing machine meeting on an operating table.")

dialog_addDialog("sch-m-moc0", "english", "small",
    "sound/schody/sch-m-moc0.wav",
    "I`m sorry, I got a bit carried away.")
dialog_addDialog("sch-m-moc1", "english", "small",
    "sound/schody/sch-m-moc1.wav",
    "Sorry, I was momentarily distracted.")
dialog_addDialog("sch-m-moc2", "english", "small",
    "sound/schody/sch-m-moc2.wav",
    "Where I am going with this shell?")

-- -----------------------------------------------------------------

plzik:addAnim("plz", "images/schody/plz0.png")
plzik:addAnim("plz", "images/schody/plz1.png")
plzik:addAnim("plz", "images/schody/plz2.png")
plzik:addAnim("plz", "images/schody/plz3.png")
plzik:addAnim("plz", "images/schody/plz4.png")
plzik:addAnim("plz", "images/schody/plz5.png")
plzik:addAnim("plz", "images/schody/plz6.png")

-- TODO: snek anim

-- ---------------------------------------------------------------
-- Init
-- ---------------------------------------------------------------
function init()
    -- TODO: offer number of restarts
    pokus = random(4)
    prehnala = 21
    if pokus == 1 then
        uvod = 0
        prehnala = 22
    elseif pokus == 2 then
        uvod = 1
    else
        uvod = random(4)
    end
    setk = 0

    plzik.stav = 0
end
init()

function no_dialog()
    return not small:isTalking() and not big:isTalking()
end



-- ---------------------------------------------------------------
-- Update
-- ---------------------------------------------------------------
function nextRound() 
    animateFish(small)
    animateFish(big)
end


function update()
    animateHead(small)
    animateHead(big)

    -- TODO: offer no_dialog()
    if small:isAlive() and big:isAlive() and no_dialog() then
        if uvod < 3 then
            if uvod == 0 then
                small:planDialog(random(30), 'sch-m-spadlo')
            elseif uvod == 1 then
                small:planDialog(random(30), 'sch-m-spadlo')
                big:planDialog(random(30), 'sch-v-lastura')
            elseif uvod == 2 then
                big:planDialog(random(30), 'sch-v-lastura')
            end
            uvod = 3
        elseif plzik:X() >= prehnala then
            small:planDialog(random(40), 'sch-m-moc'..random(3))
            prehnala = 100
        elseif setk == 0 and plzik:X() == 10 and plzik:Y() == 14 then
            big:planDialog(random(40), 'sch-v-setkani')
            setk = 1
        end
    end

    -- plzik
    if plzik:getAction() ~= "rest" then
        plzik.stav = 15
    end
    -- TODO: offer FArrary alterantive

    plzik_switch = {
        [0] = function()
            plzik:setAnim("plz", 0)
            if random(100) < 2 then
                plzik.stav = plzik.stav + 1
            end
        end,
        [1] = function()
            plzik:setAnim("plz", 5)
            plzik.stav = plzik.stav + 1
        end,
        [2] = function()
            plzik:setAnim("plz", random(3) + 1)
            plzik.stav = plzik.stav + 1
        end,
        [3] = function()
            -- TODO: offer odd() ?
            if random(100) < 20 then
                plzik:setAnim("plz", random(3) + 1)
            end
            if random(1000) < 5 then
                plzik.stav = plzik.stav + 1
            end
        end,
        [4] = function()
            plzik:setAnim("plz", 5)
            plzik.stav = 0
        end,

        [10] = function()
            plzik:setAnim("plz", 4)
            -- TODO: FArray
            plzik.stav = 21 + random(20) 
        end,
        [15] = function()
            plzik:setAnim("plz", 5)
            if plzik:getAction() == "rest" then
                plzik.stav = 21 + random(20)
            end
        end,
        [20] = function()
            plzik.stav = 3
        end,
    }

    task = plzik_switch[plzik.stav]
    if task then
        task()
    else
        plzik.stav = plzik.stav - 1
    end
end

