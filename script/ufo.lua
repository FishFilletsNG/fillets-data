file_include("script/level_funcs.lua")

createRoom(48, 30, "images/ufo/ufo-pozadi-1.png")

wall = addModel("item_fixed", 0, 0,
[[
........XX......XXXXXXXXX.XXXXXXXXXXXXXXXXXXXXXX
.......XX......XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
......XX......XXXXXXXXX.XXXXXXXXXXXXXXXXXXXXXXXX
.....XX.......XXXXXXXXXXXXX.....XXXXX.....XXXXX.
....XX........XXXXXXXXXXXXX......XXX.......XXX..
...XX.........XXXXXXXXXXXX........XX.......XXX..
..XX..........XXXXX.XXXXX.........X........XXX..
.XX...........XXXXX.XXXXXX.................XXX..
XX.............XXXX..XXXXXX................XXX..
X...............XXX....XXXXX...............XXX..
.................XX.....XX.................XXX..
..................X........................XX...
..................................X........X....
..................................X..........X..
...................X..............XX.........X..
.XXXXXX............XXX............XX.......X.X..
XXXXXXXX...........XXX...........XXX.......XXX..
XXXXXXXXX..........XXX...........XXX.......XXX..
XXXXXXXXXX..........XX.X.........XXX.......XXX..
XXXXXXXXXXX.........XXXX.........XXX.......XXX..
XXXXX....XX.........XXXX.........XXXX......XXX..
XXXX....XXXX.........XXXX........XXXX......XXX..
XXXXX..XXXXX.........XXXXX.......XXXX......XXX..
XXXXXXXXXXXX........XXXXXXXXXXXXXXXXX.....XXXXX.
XXXXXXXXXXX........XXXXXXXXXXXXXXXXXXX....XXXXXX
XXXXXXXXXXXX.....XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXX..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXX.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/ufo/ufo-prostredi.png")

item_heavy = addModel("item_heavy", 0, 9,
[[
.X.
.XX
XX.
X..
X..
X..
X..
]])
addItemAnim(item_heavy, "images/ufo/15-ocel.png")

small = addModel("fish_small", 39, 12,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 38, 14,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

item_heavy = addModel("item_heavy", 30, 16,
[[
X.X
XXX
X.X
XXX
X.X
XXX
X.X
]])
addItemAnim(item_heavy, "images/ufo/3-ocel.png")

item_heavy = addModel("item_heavy", 22, 14,
[[
X
X
X
X
X
]])
addItemAnim(item_heavy, "images/ufo/5-ocel.png")

item_light = addModel("item_light", 36, 19,
[[
XXXX
]])
addItemAnim(item_light, "images/ufo/atikad.png")

item_heavy = addModel("item_heavy", 19, 12,
[[
X
X
]])
addItemAnim(item_heavy, "images/ufo/6-ocel.png")

item_heavy = addModel("item_heavy", 19, 10,
[[
XX
X.
]])
addItemAnim(item_heavy, "images/ufo/7-ocel.png")

item_heavy = addModel("item_heavy", 19, 7,
[[
X.
X.
XX
]])
addItemAnim(item_heavy, "images/ufo/8-ocel.png")

item_light = addModel("item_light", 23, 17,
[[
XXX
]])
addItemAnim(item_light, "images/ufo/atikaa.png")

item_heavy = addModel("item_heavy", 15, 20,
[[
X
X
X
X
]])
addItemAnim(item_heavy, "images/ufo/10-ocel.png")

item_heavy = addModel("item_heavy", 15, 24,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/ufo/11-ocel.png")

item_heavy = addModel("item_heavy", 12, 8,
[[
X.X..
XXXX.
...XX
...X.
...X.
...X.
...X.
...X.
...X.
...X.
...X.
...X.
]])
addItemAnim(item_heavy, "images/ufo/12-ocel.png")

item_heavy = addModel("item_heavy", 7, 11,
[[
XXXXXXX
X...X..
X......
]])
addItemAnim(item_heavy, "images/ufo/13-ocel.png")

dlouha = addModel("item_heavy", 32, 8,
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
addItemAnim(dlouha, "images/ufo/17-ocel.png")

item_light = addModel("item_light", 40, 22,
[[
XXX
]])
addItemAnim(item_light, "images/ufo/atikac.png")

item_light = addModel("item_light", 41, 21,
[[
X
]])
addItemAnim(item_light, "images/ufo/hlava_m-_00.png")
-- extsize=2; first="hlava m-1.BMP"

item_heavy = addModel("item_heavy", 7, 14,
[[
X
X
]])
addItemAnim(item_heavy, "images/ufo/6-ocel.png")



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

