file_include("script/level_funcs.lua")

createRoom(47, 39, "images/imprisoned/ncp-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXX..........XXXX.XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXX...........XX...X.........................X
XXXX.........................................XX
XXXX.............XXXX.......................XXX
XXXX..............XXXXXX...................XXXX
XXXX...............XXXX...................XXXXX
XXXX.....................................XXXXXX
XXXX....................................XXXXXXX
XXXX...................................XXXXXXXX
XXXX..................................XXXXXXXXX
XXXX.................................XXXXXXXXXX
XXXX.................................XXXXXXXXXX
XXXXX.................................XXXXXXXXX
XXXXXX.................................XXXXXXXX
XXXXXXX.....X..................X........XXXXXXX
XXXXXXX..................................XXXXXX
XXXXXX......X.............................XXXXX
XXXXX.......X..............................XXXX
XXXX........................................XXX
XXXX........................................XXX
XXXX........................................XXX
XXXX........................................XXX
XXXX......XX.........XXXXXXXXXXXX.XXXXXX....XXX
XXXX......XX.........XXXXXXXXXXXX.XXXXXX....XXX
XXXX......XX.........XXXXXXXXXXXX.XXXXXX....XXX
XXXX......XXX.......................XXXX....XXX
XXXX.....XXXX.......XXXXXXXXXXXX....XXXX....XXX
XXXX.....XXXXX..X..XXXXXXXXXXXXX....XXXX....XXX
XXXX................................XXXX....XXX
....................................XXXX....XXX
.......X.XXXXXXXXXXXXXXXXXXXXX......XXXX....XXX
..................XXXXXXXXX.........XXXX....XXX
XXX.................XXXX............XXXXXXXXXXX
XXX.............................XXXXXXXXXXXXXXX
XXX.........................XXXXXXXXXXXXXXXXXXX
XXX..XX..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXX.XXXX.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/imprisoned/ncp-w.png")

koral1 = addModel("item_light", 18, 11,
[[
XXXXXXX
X......
XXXXXXX
X......
XXXXXXX
]])
addItemAnim(koral1, "images/imprisoned/coral_cerv.png")

koral2 = addModel("item_light", 24, 9,
[[
..X......
XXXXXXXXX
..X.....X
XXX.....X
..X.....X
XXX....XX
]])
addItemAnim(koral2, "images/imprisoned/koral_zel.png")

koral3 = addModel("item_light", 8, 15,
[[
.X.....X.
XXXXXXXXX
]])
addItemAnim(koral3, "images/imprisoned/koral_bily.png")

item_heavy = addModel("item_heavy", 35, 20,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/imprisoned/newcolorproblem-7-tmp.png")

elko = addModel("item_heavy", 39, 22,
[[
XXXX
...X
...X
...X
...X
]])
addItemAnim(elko, "images/imprisoned/newcolorproblem-11-tmp.png")

valec = addModel("item_heavy", 11, 32,
[[
X.
X.
XX
X.
]])
addItemAnim(valec, "images/imprisoned/newcolorproblem-12-tmp.png")

item_heavy = addModel("item_heavy", 18, 26,
[[
XXXXXXXXXXXXXXX
]])
addItemAnim(item_heavy, "images/imprisoned/newcolorproblem-13-tmp.png")

sasanka = addModel("item_light", 17, 2,
[[
.X
.X
]])
addItemAnim(sasanka, "images/imprisoned/sasanka_00.png")
-- extsize=7; first="sasanka1.BMP"

item_heavy = addModel("item_heavy", 29, 8,
[[
X
X
]])
addItemAnim(item_heavy, "images/imprisoned/newcolorproblem-16-tmp.png")

snek = addModel("item_light", 25, 30,
[[
X
]])
addItemAnim(snek, "images/imprisoned/maly_snek_00.png")
-- extsize=3; first="maly snek1.BMP"

item_light = addModel("item_light", 40, 21,
[[
XXX
]])
addItemAnim(item_light, "images/imprisoned/musle_troj.png")

item_light = addModel("item_light", 41, 31,
[[
XX
XX
]])
addItemAnim(item_light, "images/imprisoned/shell_velka.png")

item_heavy = addModel("item_heavy", 36, 20,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/imprisoned/newcolorproblem-7-tmp.png")

item_heavy = addModel("item_heavy", 37, 20,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/imprisoned/newcolorproblem-7-tmp.png")

item_heavy = addModel("item_heavy", 38, 20,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/imprisoned/newcolorproblem-7-tmp.png")

item_light = addModel("item_light", 4, 9,
[[
XXXX
XXXX
.XX.
.XX.
.X..
]])
addItemAnim(item_light, "images/imprisoned/korala.png")

item_light = addModel("item_light", 5, 3,
[[
XXX..
XXX..
XX...
XXXXX
XXXXX
XXXXX
]])
addItemAnim(item_light, "images/imprisoned/koralb.png")

item_light = addModel("item_light", 8, 3,
[[
.XX..
XXXXX
XXXXX
]])
addItemAnim(item_light, "images/imprisoned/koralc.png")

item_light = addModel("item_light", 12, 2,
[[
XX
XX
]])
addItemAnim(item_light, "images/imprisoned/korald.png")

item_light = addModel("item_light", 23, 3,
[[
X
]])
addItemAnim(item_light, "images/imprisoned/shell1.png")

small = addModel("fish_small", 20, 12,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 27, 12,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

konik = addModel("item_light", 41, 19,
[[
X
X
]])
addItemAnim(konik, "images/imprisoned/konik_00.png")
-- extsize=3; first="konik1.BMP"

koral0 = addModel("item_light", 22, 4,
[[
XXXXXXXXXXX
..........X
]])
addItemAnim(koral0, "images/imprisoned/koral_dlouhy.png")



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

