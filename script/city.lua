file_include("script/level_funcs.lua")

createRoom(50, 23, "images/city/vitejte1-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXX...........XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX............XXXXXX.XXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXX..........XXXX...XXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXX.....XX.........XXXXXXXXXXXX
XXX.....XXXXX..........................XX......XXX
XX.......XXX....................................XX
XX.......XXX....................................XX
XX........XX....................................XX
XX.........X...........XXXX.............X.......XX
XX...................XXXXXXXX.........X.X.......XX
XX..................XXXXXXXXXX........XXX.......XX
XX..................XXX....XXX........XXX.......XX
XX.................XXX......XXX.......XXX......XXX
XX.................XXX......XXX.......XXX.......XX
XX.........X.......XXX......XX........XXX.......XX
XX........XX.......X.X.......X........XXX.......XX
XX.......XXX..........................XXX.......XX
XX.......XXX..........................X.........XX
XX.......XXX.......XX...........................XX
XX.......XXX.......XXX......X.........XXX.......XX
XXX.....XXXXX.....XXXXX....XX.XX.....XXXXX.....XXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/city/vitejte1-w.png")

vladce = addModel("item_light", 24, 5,
[[
XX
XX
XX
]])
addItemAnim(vladce, "images/city/hlava_00.png")
-- extsize=19; first="hlava 1.BMP"

item_heavy = addModel("item_heavy", 27, 5,
[[
X
X
X
X
]])
addItemAnim(item_heavy, "images/city/2-ocel.png")

item_heavy = addModel("item_heavy", 20, 4,
[[
X
X
X
X
X
X
]])
addItemAnim(item_heavy, "images/city/3-ocel.png")

item_light = addModel("item_light", 34, 20,
[[
X
]])
addItemAnim(item_light, "images/city/maly_snek_00.png")
-- extsize=3; first="maly snek1.BMP"

item_light = addModel("item_light", 23, 18,
[[
XXXXX
.XXX.
..X..
]])
addItemAnim(item_light, "images/city/preklad.png")

item_light = addModel("item_light", 14, 18,
[[
XXXXX
.XXX.
..X..
]])
addItemAnim(item_light, "images/city/prekladb.png")

item_light = addModel("item_light", 35, 7,
[[
XXXX.
.XXXX
]])
addItemAnim(item_light, "images/city/ornament.png")

item_light = addModel("item_light", 9, 13,
[[
XXXXX
X....
]])
addItemAnim(item_light, "images/city/ruka.png")

small = addModel("fish_small", 21, 17,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 25, 16,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

krabi = addModel("item_light", 20, 2,
[[
XX
]])
addItemAnim(krabi, "images/city/krab_00.png")
-- extsize=9; first="krab1.BMP"

item_light = addModel("item_light", 24, 4,
[[
XX
]])
addItemAnim(item_light, "images/city/krab_00.png")
-- extsize=9; first="krab1.BMP"

item_light = addModel("item_light", 30, 11,
[[
XX
]])
addItemAnim(item_light, "images/city/krab_00.png")
-- extsize=9; first="krab1.BMP"

item_light = addModel("item_light", 25, 15,
[[
XX
]])
addItemAnim(item_light, "images/city/krab_00.png")
-- extsize=9; first="krab1.BMP"

item_light = addModel("item_light", 10, 12,
[[
XX
]])
addItemAnim(item_light, "images/city/krab_00.png")
-- extsize=9; first="krab1.BMP"

item_light = addModel("item_light", 8, 15,
[[
XX
]])
addItemAnim(item_light, "images/city/krab_00.png")
-- extsize=9; first="krab1.BMP"

item_light = addModel("item_light", 41, 19,
[[
XX
]])
addItemAnim(item_light, "images/city/krab_00.png")
-- extsize=9; first="krab1.BMP"



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

