
path_include("script/level_funcs.lua")

createRoom(40, 35, "images/Pravidla/Pravidla-p.png")

addModel("item_fixed", 0, 0, "images/Pravidla/Pravidla-w.png",
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXX.............XXXXXX.....XXXX
XXXXXXXXX.X...............X...........XX
XXXXXXXX........XXXXX..................X
XXXXXX.............XX..........XXX.....X
XXXXX..................................X
XXXXXX.......X...XXXXXXXXX............XX
XXXXXXX......XX.XXXXXXXXXXX..........XXX
XXXXXXXX......X.X....XXXXXXXX........XXX
XXX..XXX.............XXXX...........XXXX
XX.....XX............X..............XXXX
XX.....XXXXXXXX.X....XX..............XXX
XX......XXXXXXXXX....XXXX............XXX
XX......XXXXXXXX.....XXXXX......XX...XXX
XX........XXXX........XX........XXXXXXXX
X.....................XX..........XXXXXX
X.....................XXX...........XXXX
X....................XXXX............XXX
X.....XXXXXXXXXXXXXXXXXX.............XXX
X......................X.............XXX
...................................XXXXX
......................XXXXXXXX....XXXXXX
XXX.XXXXXXXXXXXXXXXXXXXXXXXXX......XXXXX
XX.......X.............XXXXXX.........XX
XX.......................XXXX..........X
X.........................XXX..........X
X..........XX...............X..........X
X........XXXX.X........................X
X........XXXXXX........................X
X........XXXXXXX...........XXXX........X
X........XXXXXXXXXX.......XXXXX.......XX
XXXXX....XXXXXXXXXXXXXXXXXXXXXX......XXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX...XXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])

little = addModel("fish_small", 2, 30, "images/Pravidla/1-Mala.png",
[[
XXX
]])

big = addModel("fish_big", 5, 31, "images/Pravidla/2-Velka.png",
[[
XXXX
XXXX
]])

addModel("item_light", 2, 29, "images/Pravidla/misa.png",
[[
XXXXX
]])

addModel("item_light", 4, 28, "images/Pravidla/cup.png",
[[
XX
]])

addModel("item_light", 5, 27, "images/Pravidla/maly_snek1.png",
[[
X
]])

addModel("item_heavy", 11, 25, "images/Pravidla/6-Ocel.png",
[[
X
X
]])

addModel("item_light", 10, 24, "images/Pravidla/sekera0.png",
[[
XXXXX
....X
]])

addModel("item_light", 22, 29, "images/Pravidla/marmelada.png",
[[
XX
XX
XX
]])

addModel("item_light", 29, 27, "images/Pravidla/med.png",
[[
XX
XX
XX
]])

addModel("item_light", 29, 24, "images/Pravidla/merunkova.png",
[[
XX
XX
XX
]])

addModel("item_heavy", 22, 20, "images/Pravidla/11-Ocel.png",
[[
X
]])

addModel("item_light", 22, 21, "images/Pravidla/shell1.png",
[[
X
]])

addModel("item_heavy", 27, 12, "images/Pravidla/13-Ocel.png",
[[
...X.....
XXXXXXXXX
]])

addModel("item_light", 28, 8, "images/Pravidla/kniha.png",
[[
XXX
]])

addModel("item_heavy", 18, 2, "images/Pravidla/15-Ocel.png",
[[
X
X
]])

addModel("item_light", 6, 11, "images/Pravidla/svicka.png",
[[
X
X
X
X
X
X
X
X
]])


-- -----------------------------------------------------------------
-- LITTLE fish
addFishAnim(little, "little")

-- -----------------------------------------------------------------
-- BIG fish
addFishAnim(big, "big")


-- TEST: dialogs
dialog_addFont("little", "font/little.png")
dialog_addFont("big", "font/big.png")

dialog_addDialog("pra-m-chytit", "english", "little",
    "sound/Pravidla/pra-m-chytit.wav",
    "Now I cannot take the axe. The can is in the way.")

dialog_addDialog("pra-m-prisun", "english", "little",
    "sound/Pravidla/pra-m-prisun.wav",
    "If you can push that can to me, I`ll shove the axe on it and everything will be okay.")

dialog_addDialog("pra-v-vzit", "english", "big",
    "sound/Pravidla/pra-v-vzit.wav",
    "You mustn`t push the axe!")


start = 1
-- ---------------------------------------------------------------
-- Update
-- ---------------------------------------------------------------
function nextRound() 
    animateFish(little)
    animateFish(big)

    -- TEST: dialogs
    if start == 1 then
        start = 2
        little:planDialog("pra-m-chytit", 30)
        big:planDialog("pra-v-vzit", 50)
        little:planDialog("pra-m-prisun", 30)
    end

end


function update()
    -- print("script update")
    -- x, y =  model_getLoc(little)
    -- print(x .. ", " .. y)
    --

    animateHead(little)
    animateHead(big)
end


