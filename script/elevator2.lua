file_include("script/level_funcs.lua")

createRoom(34, 36, "images/elevator2/zdviz2-p.png")

wall = addModel("item_fixed", 0, 0,
[[
..................................
..................................
.....XXXXXXXXXX....XXXXXXXXXX.....
.....XXXXXXXX........XXXXXXXX.....
.....XXXXX..............XXXXX.....
..................................
X................................X
XXXXXX.XXXXXXX......XXXXXXX.XXXXXX
X............X......X............X
X............X......X............X
X............X......X............X
X...................X............X
X...................X............X
X............X......X............X
X............X......X............X
X............X......X............X
X............X......X............X
X............X......X............X
X............X......X............X
X............X......X............X
X............X......X............X
X............X......X............X
X...................X............X
X...................X............X
X............X......X............X
X............X......X............X
X............X...................X
X............X...................X
X............X......X............X
X............X......X............X
X................................X
X................................X
XXXXXXXXXXXXX.......XXXXXXXXXXXXXX
XXXXXXXXXXXXXXX....XXXXXXXXXXXXXXX
XXXXXXXXXXXXXX......XXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/elevator2/zdviz2-w.png")

vytah = addModel("item_heavy", 14, 6,
[[
XXXXXX
X.....
X.....
XXXXXX
.....X
.....X
XXXXXX
]])
addItemAnim(vytah, "images/elevator2/zdviz-1-tmp.png")

stroj = addModel("item_heavy", 13, 3,
[[
..XXXX..
..XXXX..
XXXXXXXX
X......X
]])
addItemAnim(stroj, "images/elevator2/stroj_00.png")
-- extsize=5; first="stroj1.BMP"

item_light = addModel("item_light", 16, 34,
[[
X
]])
addItemAnim(item_light, "images/elevator2/hlava_m-_00.png")
-- extsize=2; first="hlava m-1.BMP"

item_light = addModel("item_light", 13, 11,
[[
X
X
]])
addItemAnim(item_light, "images/elevator2/amfora_zelena.png")

item_light = addModel("item_light", 8, 31,
[[
X
]])
addItemAnim(item_light, "images/elevator2/shell1.png")

dedek = addModel("item_light", 3, 29,
[[
.X.
XXX
.X.
]])
addItemAnim(dedek, "images/elevator2/kriz_00.png")
-- extsize=2; first="kriz1.BMP"

small = addModel("fish_small", 25, 25,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 4, 24,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

hlava = addModel("item_light", 28, 30,
[[
XX
.X
]])
addItemAnim(hlava, "images/elevator2/lebzna.png")



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

