file_include("script/level_funcs.lua")

createRoom(37, 15, "images/submarine/zrc-p.png")

wall = addModel("item_fixed", 0, 0,
[[
..................................
..................................
..................................
................................XX
..............................XXXX
...XXXXX.XXXXXX..XXXXX.XXXXXXXXXX.
.........X.....................XX.
.XXX...........................XXX
.XXX.XXXXXXX..XXXXXXXXXXXXXXXXXXXX
..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.
...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.
..............................XXXX
................................XX
]])
addItemAnim(wall, "images/submarine/zrc-w.png")

peri = addModel("item_heavy", 21, 2,
[[
XX.
.X.
.X.
.X.
.X.
.XX
]])
addItemAnim(peri, "images/submarine/peri_00.png")
-- extsize=7; first="peri1.BMP"

zrcadlo = addModel("item_light", 11, 2,
[[
XX
XX
XX
]])
addItemAnim(zrcadlo, "images/submarine/zrcadlo.png")

item_light = addModel("item_light", 8, 5,
[[
X
]])
addItemAnim(item_light, "images/submarine/kriz.png")

lahev = addModel("item_light", 8, 6,
[[
X
X
]])
addItemAnim(lahev, "images/submarine/lahev.png")

naboj = addModel("item_light", 13, 7,
[[
XX
]])
addItemAnim(naboj, "images/submarine/naboj.png")

item_light = addModel("item_light", 27, 7,
[[
X
]])
addItemAnim(item_light, "images/submarine/matka_a.png")

small = addModel("fish_small", 17, 7,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 3, 2,
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

