file_include("script/level_funcs.lua")

createRoom(40, 30, "images/score/score-pozadi.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX................XXXX...XXX
XXXXXXX................................X
XX.....................................X
XX.................XXXXXXX.............X
XX...................XXXX..............X
XX.............................X.X.....X
XX......XXXXXXX................XX......X
XX............X........................X
X.........X............................X
X....................................XXX
X.......XXXX.......X.X.XXXX.........XXXX
X.......XXX........XXX.XXX...........XXX
X.....XXXXX..........XXXXXX..........XXX
X.....XX..................X....X....XXXX
X.....XX..................X....X.......X
X.....XX.......................X.......X
X....XXX.......................X.......X
X...XXXX.............XX........X......XX
X...XXXX......XXX....XX.............XXXX
X....XXX........XXXXXX......XXXX......XX
X.....XX......................XX.......X
X.....XX......................X........X
X......X...............................X
XX.....................................X
XXX.....XXXXX..XXXXXXXXXX..............X
XXX.....XX.........XXXXXX.............XX
XXXXX........XX.............XXXXX.X...XX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/score/score-w.png")

prvnikostka = addModel("item_light", 22, 15,
[[
XXXX
XXXX
XXXX
XXXX
]])
addItemAnim(prvnikostka, "images/score/s.png")

item_light = addModel("item_light", 23, 8,
[[
XXXX
XXXX
XXXX
XXXX
]])
addItemAnim(item_light, "images/score/c.png")

item_light = addModel("item_light", 17, 22,
[[
XXXX
XXXX
XXXX
XXXX
]])
addItemAnim(item_light, "images/score/o.png")

item_light = addModel("item_light", 11, 4,
[[
XXXX
XXXX
XXXX
XXXX
]])
addItemAnim(item_light, "images/score/r.png")

item_light = addModel("item_light", 32, 24,
[[
XXXX
XXXX
XXXX
XXXX
]])
addItemAnim(item_light, "images/score/e.png")

item_heavy = addModel("item_heavy", 21, 10,
[[
X
X
]])
addItemAnim(item_heavy, "images/score/6-ocel.png")

krab = addModel("item_light", 21, 4,
[[
XX
]])
addItemAnim(krab, "images/score/krab_00.png")
-- extsize=9; first="krab1.BMP"

chobka = addModel("item_light", 32, 13,
[[
X...X
XXXXX
]])
addItemAnim(chobka, "images/score/chobotnice_00.png")
-- extsize=8; first="chobotnice0.BMP"

rejnok = addModel("item_light", 5, 9,
[[
XXXXXX
]])
addItemAnim(rejnok, "images/score/rejnok_00.png")
-- extsize=11; first="rejnok1.BMP"

item_heavy = addModel("item_heavy", 33, 3,
[[
X
X
X
X
]])
addItemAnim(item_heavy, "images/score/10-ocel.png")

small = addModel("fish_small", 35, 3,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 35, 6,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

item_heavy = addModel("item_heavy", 34, 22,
[[
..X
XXX
]])
addItemAnim(item_heavy, "images/score/13-ocel.png")

sasanka = addModel("item_light", 36, 9,
[[
.X
.X
]])
addItemAnim(sasanka, "images/score/sasanka_00.png")
-- extsize=7; first="sasanka1.BMP"



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

