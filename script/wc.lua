file_include("script/level_funcs.lua")

createRoom(23, 22, "images/wc/wc-p.png")

wall = addModel("item_fixed", 0, 0,
[[
.......................
.......................
X.................XXX..
XX..XXXXXXXX...XX.XXXXX
XXXXXXXXXXXXXXXXX.XXXXX
XXXXXXXXXXXXXXXXX.XXXXX
XXXXXXXXXXX.......XXXXX
XX.XXXXXX..............
X......................
.................XX....
.................XXX...
.................XXXXXX
.................XXXXXX
.................XXXXXX
.................XXXXXX
.......................
.................XXXXXX
..XXXXXX.........XXXXXX
XXXXXXXXXXXX.....XXXXXX
XXXXXXXXXXXXX...XXXXXXX
XXXXXXXXXXXXX...XXXXXXX
XXXXXXXXXXXXXX..XXXXXXX
]])
addItemAnim(wall, "images/wc/wc-w.png")

item_light = addModel("item_light", 11, 9,
[[
.....X
.....X
.....X
.....X
.....X
XXXXXX
XXXXXX
.XXXX.
..XXX.
.XXXXX
]])
addItemAnim(item_light, "images/wc/hajzl.png")

item_light = addModel("item_light", 16, 7,
[[
XX
XX
]])
addItemAnim(item_light, "images/wc/hajzlak.png")

item_heavy = addModel("item_heavy", 17, 3,
[[
X
X
X
X
]])
addItemAnim(item_heavy, "images/wc/3-ocel.png")

item_heavy = addModel("item_heavy", 1, 8,
[[
X
X
X
X
X
X
X
X
X
X
]])
addItemAnim(item_heavy, "images/wc/4-ocel.png")

small = addModel("fish_small", 13, 19,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 7, 9,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")



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

