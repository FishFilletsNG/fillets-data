file_include("script/level_funcs.lua")

createRoom(45, 33, "images/windoze/win-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX..X
X...........................................X
X............................................
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
X...........................................X
XXXXXXX.....................................X
XXXXXXX.....................................X
XXXXXXX.....................................X
XXXXXXX.....................................X
XXXXXXX.....................................X
XXXXXXX.....................................X
X....XX.....................................X
X....XX.....................................X
XXXXXXX.....................................X
X...XXX......................................
XXXXXXX......................................
X....XX.....................................X
X....XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/windoze/win-w.png")

item_light = addModel("item_light", 33, 4,
[[
XXXXXXX
XXXXXXX
XXXXXXX
XXXXXXX
XXXXXXX
]])
addItemAnim(item_light, "images/windoze/dotaz.png")

item_light = addModel("item_light", 28, 22,
[[
XXXXXXXX
XXXXXXXX
XXXXXXXX
XXXXXXXX
XXXXXXXX
XXXXXXXX
]])
addItemAnim(item_light, "images/windoze/color.png")

item_light = addModel("item_light", 1, 12,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon1.png")

bonuslevel = addModel("item_light", 23, 9,
[[
XXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXX
X.................X
X...X.............X
X.................X
X.................X
XX................X
XX.........XX.....X
XXXXX.............X
.............X....X
.............X....X
X...XX............X
XXXXXXXXXXXXXXXXXXX
]])
addItemAnim(bonuslevel, "images/windoze/bonus_00.png")
-- extsize=1; first="bonus0.BMP"

item_light = addModel("item_light", 1, 16,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon2.png")

item_light = addModel("item_light", 3, 2,
[[
.XX.
.XX.
XXXX
]])
addItemAnim(item_light, "images/windoze/tento.png")

item_light = addModel("item_light", 37, 2,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon25.png")

item_light = addModel("item_light", 29, 28,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon21.png")

item_light = addModel("item_light", 9, 20,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/windoze/kos.png")

small = addModel("fish_small", 11, 29,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 3, 7,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

notepad = addModel("item_light", 7, 23,
[[
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
]])
addItemAnim(notepad, "images/windoze/notepad_00.png")
-- extsize=9; first="Notepad0.BMP"

item_light = addModel("item_light", 8, 14,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon14.png")

item_light = addModel("item_light", 5, 16,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon27.png")

item_light = addModel("item_light", 31, 28,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon7.png")

item_light = addModel("item_light", 8, 12,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon29.png")

item_light = addModel("item_light", 4, 5,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon3.png")

item_light = addModel("item_light", 4, 14,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon24.png")

item_light = addModel("item_light", 18, 21,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon22.png")

item_light = addModel("item_light", 7, 8,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon28.png")

item_light = addModel("item_light", 8, 6,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon11.png")

item_light = addModel("item_light", 17, 23,
[[
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
]])
addItemAnim(item_light, "images/windoze/altar.png")

item_light = addModel("item_light", 41, 0,
[[
.XX.
.XX.
XXXX
]])
addItemAnim(item_light, "images/windoze/disketa.png")

item_light = addModel("item_light", 8, 16,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon16.png")

item_light = addModel("item_light", 5, 12,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon31.png")

item_light = addModel("item_light", 8, 10,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon32.png")

item_light = addModel("item_light", 33, 28,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon5.png")

item_light = addModel("item_light", 8, 18,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon17.png")

item_light = addModel("item_light", 1, 8,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon7.png")

item_light = addModel("item_light", 1, 14,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon33.png")

item_light = addModel("item_light", 1, 10,
[[
XX
XX
]])
addItemAnim(item_light, "images/windoze/icon2.png")

staravelka = addModel("item_light", 24, 13,
[[
XXXX
XXXX
]])
addItemAnim(staravelka, "images/windoze/old-velka_00.png")
-- extsize=3; first="old-velka0.BMP"

staramala = addModel("item_light", 24, 11,
[[
XXX
]])
addItemAnim(staramala, "images/windoze/old-mala_00.png")
-- extsize=3; first="old-mala0.BMP"

item_heavy = addModel("item_heavy", 29, 19,
[[
X
X
]])
addItemAnim(item_heavy, "images/windoze/old-valec.png")

item_light = addModel("item_light", 35, 13,
[[
...X
XXXX
X...
]])
addItemAnim(item_light, "images/windoze/old-prkna.png")

item_light = addModel("item_light", 36, 15,
[[
X
X
X
]])
addItemAnim(item_light, "images/windoze/old-svicka.png")

item_light = addModel("item_light", 27, 11,
[[
XX
]])
addItemAnim(item_light, "images/windoze/old-kniha.png")

budik = addModel("item_light", 24, 12,
[[
X
]])
addItemAnim(budik, "images/windoze/old-budik.png")

spuntik = addModel("item_light", 23, 18,
[[
XXXX
XXXX
.XXX
]])
addItemAnim(spuntik, "images/windoze/41-tmp.png")



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

