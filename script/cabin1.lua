file_include("script/level_funcs.lua")

createRoom(24, 22, "images/cabin1/kajuta1p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXX
XXX..................XXX
XXX.................XXXX
XXX..................XXX
XXX..................XXX
XXX..................XXX
XXX....X.............XXX
XXX....XXXX.....XXXXXXXX
XXX....X.............XXX
XXX....X.............XXX
XXX....X.............XXX
XXX....X......XXXXXXXXXX
XXX....X.............XXX
X......X.............XXX
X....................XXX
X............XXXXXXXXXXX
XXX....XXXXX............
XXX.....................
XXX..............XXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/cabin1/kajuta1w.png")

truhla = addModel("item_light", 2, 15,
[[
XX
XX
]])
addItemAnim(truhla, "images/cabin1/truhla.png")

papouch = addModel("item_light", 8, 15,
[[
XX.
XXX
]])
addItemAnim(papouch, "images/cabin1/papoucha_00.png")
-- extsize=1; first="papouchA1.BMP"

item_light = addModel("item_light", 16, 2,
[[
XXXXX
X....
]])
addItemAnim(item_light, "images/cabin1/lampa.png")

chobot = addModel("item_light", 3, 5,
[[
X...X
XXXXX
]])
addItemAnim(chobot, "images/cabin1/chobotnice_00.png")
-- extsize=8; first="chobotnice0.BMP"

lebka = addModel("item_light", 13, 10,
[[
XX
.X
]])
addItemAnim(lebka, "images/cabin1/lebzna.png")

trubka = addModel("item_heavy", 14, 14,
[[
X
X
]])
addItemAnim(trubka, "images/cabin1/trubka1.png")

poklop = addModel("item_heavy", 10, 7,
[[
XXXXXXX
]])
addItemAnim(poklop, "images/cabin1/trubka2.png")

small = addModel("fish_small", 17, 13,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 16, 14,
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

