file_include("script/level_funcs.lua")

createRoom(29, 27, "images/ending/prvni-p.png")

wall = addModel("item_fixed", 0, 0,
[[
.............................
.............XX.XX...........
..............X.X............
..............X.X............
.XXXX.........X.X.....XX.X.XX
XXXXX.....XXXXX.X...XXXXXXXXX
XXXXXXXXXXXXXXX.XXXXXXXXXXXXX
XXXXXXXXXXXXXXX.XXXXXXXXXXXXX
XXXXXXXXXXX.....XXXXXXXXXXXXX
XXXXXXX...........XXXXXXXXXXX
XXXX.................XXXXXXXX
XXX....................XXXXXX
XXX....................XXXXXX
XXX.....................XXXXX
XXX......................XXXX
XXX........................XX
XXX..........................
XXX..........................
XXX..........................
XXXX.........................
XXXXX.....................XXX
XXXXXXX..................XXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/ending/prvni-w.png")

item_light = addModel("item_light", 7, 17,
[[
X...
X...
XXXX
X..X
X..X
]])
addItemAnim(item_light, "images/ending/zidle_m.png")

zidlev = addModel("item_light", 20, 17,
[[
...X
...X
XXXX
X..X
X..X
]])
addItemAnim(zidlev, "images/ending/zidle_v.png")

item_light = addModel("item_light", 12, 18,
[[
XXXXXXX
.X...X.
.X...X.
.X...X.
]])
addItemAnim(item_light, "images/ending/stul.png")

small = addModel("fish_small", 8, 17,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 19, 17,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

item_light = addModel("item_light", 8, 18,
[[
XXX
]])
addItemAnim(item_light, "images/ending/polstar.png")

pldik = addModel("item_light", 14, 21,
[[
XXX
]])
addItemAnim(pldik, "images/ending/pldik_00.png")
-- extsize=13; first="pldik0.BMP"



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
end

