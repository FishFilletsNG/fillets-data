file_include("script/level_funcs.lua")

createRoom(29, 22, "images/snowman/trup-p1.png")

wall = addModel("item_fixed", 0, 0,
[[
XX.........................XX
XX.........................XX
XX.........................XX
XX.........................XX
XX.........................XX
XX.........................XX
XX.........................XX
XX.........................XX
XXX..XXXXXXXXXXXXXXXXXX...XXX
.............................
.............................
XX.........................XX
XX.........................XX
XXX.......................XXX
XXX.......................XXX
XXX.......................XXX
XXXX.....................XXXX
XXXXXX.................XXXXXX
XXXXXXXXXXXXXX.XXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/snowman/trup-hotovo.png")

ocel = addModel("item_heavy", 2, 4,
[[
XXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(ocel, "images/snowman/posun-1-tmp.png")

snehulak = addModel("item_light", 13, 4,
[[
..
.X
.X
.X
]])
addItemAnim(snehulak, "images/snowman/snehulak_00.png")
-- extsize=2; first="snehulak1.BMP"

item_light = addModel("item_light", 10, 15,
[[
XXX
.X.
.X.
]])
addItemAnim(item_light, "images/snowman/stolekm.png")

item_light = addModel("item_light", 15, 15,
[[
XXXXX
..X..
..X..
]])
addItemAnim(item_light, "images/snowman/stolekv.png")

small = addModel("fish_small", 10, 6,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 12, 16,
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

