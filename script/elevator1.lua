file_include("script/level_funcs.lua")

createRoom(34, 36, "images/elevator1/zdviz1-p.png")

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
X................................X
X................................X
X............X......X............X
X............X......X............X
X............X......X............X
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
addItemAnim(wall, "images/elevator1/zdviz1-w.png")

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
addItemAnim(vytah, "images/elevator1/zdviz-1-tmp.png")

stroj = addModel("item_heavy", 13, 3,
[[
..XXXX..
..XXXX..
XXXXXXXX
X......X
]])
addItemAnim(stroj, "images/elevator1/stroj_00.png")
-- extsize=5; first="stroj1.BMP"

shelka = addModel("item_light", 7, 31,
[[
X
]])
addItemAnim(shelka, "images/elevator1/shell1.png")

hlavicka = addModel("item_light", 8, 31,
[[
X
]])
addItemAnim(hlavicka, "images/elevator1/hlava_m-_00.png")
-- extsize=2; first="hlava m-1.BMP"

dedek = addModel("item_light", 3, 29,
[[
.X.
XXX
.X.
]])
addItemAnim(dedek, "images/elevator1/kriz_00.png")
-- extsize=2; first="kriz1.BMP"

small = addModel("fish_small", 26, 25,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 4, 24,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

llebka = addModel("item_light", 29, 30,
[[
XX
.X
]])
addItemAnim(llebka, "images/elevator1/lebzna.png")

item_light = addModel("item_light", 13, 8,
[[
X
X
]])
addItemAnim(item_light, "images/elevator1/amfora_zelena.png")



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

