file_include("script/level_funcs.lua")

createRoom(28, 24, "images/cabin2/kajuta2p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXX.....................XXX
XXXX....................XXXX
XXXX.....................XXX
XXXX.....................XXX
XXXX.....................XXX
XXXX....X..............X.XXX
XXXX....XX...............XXX
XXXX....XX.XXXXX....XXXXXXXX
XXXX....X...............XXXX
XXXX....X................XXX
XXXX....X................XXX
XXXX....X..........XXXXXXXXX
XXXX....X......X.........XXX
XX.......X...............XXX
X........................XXX
X...............XXXXXXXXXXXX
XXXX....XXXXXXX.............
XXXX........................
XXXX........................
XXXX................XXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/cabin2/kajuta2w.png")

truhla = addModel("item_light", 3, 16,
[[
XX
XX
]])
addItemAnim(truhla, "images/cabin2/truhla.png")

papouch = addModel("item_light", 8, 16,
[[
XX.
XXX
]])
addItemAnim(papouch, "images/cabin2/papoucha_00.png")
-- extsize=1; first="papouchA1.BMP"

lampa = addModel("item_light", 20, 2,
[[
XXXXX
X....
]])
addItemAnim(lampa, "images/cabin2/lampa.png")

chobot = addModel("item_light", 4, 5,
[[
XX..X
XXXXX
]])
addItemAnim(chobot, "images/cabin2/chobotnice_00.png")
-- extsize=8; first="chobotnice0.BMP"

lebka = addModel("item_light", 18, 11,
[[
XX
.X
]])
addItemAnim(lebka, "images/cabin2/lebzna.png")

item_heavy = addModel("item_heavy", 19, 15,
[[
X
X
]])
addItemAnim(item_heavy, "images/cabin2/trubka1.png")

poklop = addModel("item_heavy", 15, 8,
[[
XXXXXX
]])
addItemAnim(poklop, "images/cabin2/trubka2.png")

small = addModel("fish_small", 21, 14,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 21, 15,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

papzivy = addModel("item_light", 11, 16,
[[
X..
XXX
]])
addItemAnim(papzivy, "images/cabin2/pap-zivy_00.png")
-- extsize=9; first="pap-zivy0.BMP"



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

