file_include("script/level_funcs.lua")

createRoom(40, 27, "images/hardware/pozadi2.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXX..XXXXXXX..XXXXXXX..XXXXXXXX
XXXXXXXXXXXX..XXXXXXX..XXXXXXX..XXXXXXXX
XXXXXXXXXXXX..XXXXXXX..XXXXXXX..XXXXXXXX
XXXXXXXXXXXX..XXXXXXX..XXXXXXX..XXXXXXXX
XXXXXXXXXXXX..XXXXXXX..XXXXXXX..XXXXXXXX
XXXXXXXX............X........X.........X
XXXXXXXX............X........X.........X
XXXXXXXX............X........X.........X
XXXXXXXX...............................X
XXXXXXXX...............................X
XXXXXXXX......XXXXXXX..XXXXXXX..XXXXXXXX
X.................................XXXXXX
X.................................XXXXXX
X.................................XXXXXX
X.................................XXXXXX
X....X........X........X..........XXXXXX
X.................................XXXXXX
X.................................XXXXXX
X.................................XXXXXX
X.................................XXXXXX
X....X........X........X..........XXXXXX
X.................................XXXXXX
X.................................XXXXXX
..................................XXXXXX
..................................XXXXXX
XXXXXX......XXX......XXX......XXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/hardware/puzzle-w.png")

item_light = addModel("item_light", 23, 22,
[[
XX...XX
X.....X
XXXXXXX
..XXXXX
]])
addItemAnim(item_light, "images/hardware/procesor8.png")

item_light = addModel("item_light", 23, 17,
[[
XX...XXX
X.....X.
XXXXXXX.
..XXXXX.
]])
addItemAnim(item_light, "images/hardware/procesor7.png")

item_light = addModel("item_light", 5, 12,
[[
XX...XX.
X.....XX
XXXXXXX.
..XXXXX.
]])
addItemAnim(item_light, "images/hardware/procesor6.png")

item_light = addModel("item_light", 5, 22,
[[
XX...XXX
X.....XX
XXXXXXX.
..XXXXX.
]])
addItemAnim(item_light, "images/hardware/procesor3.png")

item_light = addModel("item_light", 14, 12,
[[
XX...XX.
X.....X.
XXXXXXXX
..XXXXX.
]])
addItemAnim(item_light, "images/hardware/procesor5.png")

item_light = addModel("item_light", 14, 22,
[[
XX...XXX
X.....X.
XXXXXXXX
..XXXXX.
]])
addItemAnim(item_light, "images/hardware/procesor2.png")

item_light = addModel("item_light", 23, 12,
[[
XX...XX.
X.....XX
XXXXXXXX
..XXXXX.
]])
addItemAnim(item_light, "images/hardware/procesor1.png")

item_light = addModel("item_light", 5, 17,
[[
XX...XXX
X.....XX
XXXXXXXX
..XXXXX.
]])
addItemAnim(item_light, "images/hardware/procesor4.png")

k1 = addModel("item_heavy", 31, 5,
[[
XX
XX
.X
.X
.X
]])
addItemAnim(k1, "images/hardware/val0.png")

k2 = addModel("item_heavy", 22, 5,
[[
XX
XX
XX
.X
.X
]])
addItemAnim(k2, "images/hardware/val1.png")

k3 = addModel("item_heavy", 13, 5,
[[
XX
XX
.X
XX
.X
]])
addItemAnim(k3, "images/hardware/val2.png")

item_heavy = addModel("item_heavy", 30, 0,
[[
XX
XX
XX
XX
.X
]])
addItemAnim(item_heavy, "images/hardware/val3.png")

item_heavy = addModel("item_heavy", 21, 0,
[[
XX
XX
.X
.X
XX
]])
addItemAnim(item_heavy, "images/hardware/val4.png")

item_heavy = addModel("item_heavy", 12, 0,
[[
XX
XX
XX
.X
XX
]])
addItemAnim(item_heavy, "images/hardware/val5.png")

item_heavy = addModel("item_heavy", 33, 5,
[[
XX
XX
.X
XX
XX
]])
addItemAnim(item_heavy, "images/hardware/val6.png")

item_heavy = addModel("item_heavy", 24, 5,
[[
XX
XX
XX
XX
XX
]])
addItemAnim(item_heavy, "images/hardware/val7.png")

item_heavy = addModel("item_heavy", 15, 5,
[[
...XX
...XX
....X
XX..X
XXXXX
]])
addItemAnim(item_heavy, "images/hardware/val-spec.png")

small = addModel("fish_small", 17, 18,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 35, 7,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")



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

