file_include("script/level_funcs.lua")

createRoom(36, 33, "images/broom/koste-p.png")

wall = addModel("item_fixed", 0, 0,
[[
....................................
XXX.............XXXXXX.....XX..XXXXX
XXXXXX......XXXXXXXXXXX..XXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXX...................XXXX
XXXXXXXXXXX......................XXX
XX...............................XXX
XX................................XX
XXXXX.............................XX
XXXX...........XXXXXXXXXXXXXX......X
XX.................................X
XX.................................X
X.................................XX
X.................................XX
X.................................XX
X..............XXXXXXXXXXXXXXX...XXX
X................................XXX
X................................XXX
XX...............................XXX
XX...............................XXX
XX...............................XXX
XXXX..............................XX
XXXX................................
XXXXX...............................
XXXXXXXXXXXXXXXXXXXXXXX.......XXXXXX
XXXXXXXXXXXXXXXXXXXXXXXX......XXXXXX
XXXXXXXXXXXXXXXXXXXXXXXX.X....XXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX.XXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/broom/koste-w.png")

item_heavy = addModel("item_heavy", 7, 18,
[[
XXXXXXXXXXXXXXXXXXXXXXX
......................X
......................X
......................X
......................X
......................X
......................X
]])
addItemAnim(item_heavy, "images/broom/koste-1-tmp.png")

metla = addModel("item_light", 21, 6,
[[
.X.
.X.
.X.
XXX
XXX
]])
addItemAnim(metla, "images/broom/koste_00.png")
-- extsize=2; first="koste0.BMP"

item_light = addModel("item_light", 11, 25,
[[
X
]])
addItemAnim(item_light, "images/broom/uhli_b.png")

item_light = addModel("item_light", 12, 25,
[[
X
]])
addItemAnim(item_light, "images/broom/uhli_c.png")

item_light = addModel("item_light", 17, 25,
[[
X
]])
addItemAnim(item_light, "images/broom/uhli_d.png")

item_light = addModel("item_light", 9, 25,
[[
X
]])
addItemAnim(item_light, "images/broom/uhli_a.png")

item_heavy = addModel("item_heavy", 15, 25,
[[
X
]])
addItemAnim(item_heavy, "images/broom/koste-10-tmp.png")

item_heavy = addModel("item_heavy", 20, 25,
[[
X
]])
addItemAnim(item_heavy, "images/broom/koste-8-tmp.png")

item_light = addModel("item_light", 6, 17,
[[
XXX
]])
addItemAnim(item_light, "images/broom/drevo_a.png")

item_light = addModel("item_light", 12, 17,
[[
XXX
]])
addItemAnim(item_light, "images/broom/drevo_b.png")

big = addModel("fish_big", 17, 19,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

small = addModel("fish_small", 2, 18,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

item_light = addModel("item_light", 3, 8,
[[
XXXX.
XXXXX
]])
addItemAnim(item_light, "images/broom/uhlak.png")



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

