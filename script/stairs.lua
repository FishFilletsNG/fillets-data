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

