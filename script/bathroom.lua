file_include("script/level_funcs.lua")

createRoom(31, 32, "images/bathroom/bathroom-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
X.............................X
X.............................X
X...............X.........X...X
X.........................XXXXX
X.............................X
X.............................X
X.........................X...X
X.........................XXXXX
X.............................X
X.............................X
XXXXXXX...................X...X
X.........................XXXXX
X.............................X
X.............................X
X.........................X...X
XXXXXXX...................XXXXX
X.............................X
X.............................X
X.............................X
X.............................X
X....................XXXXXXXXXX
X.............................X
X.............................X
X.............................X
XXXXX.........................X
XXXXX.........................X
..............................X
..............................X
XX.X.XXXXXXXXXXXXXXXXXXXXXXXXXX
XX.XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/bathroom/bathroom-zed.png")

small = addModel("fish_small", 26, 23,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 25, 24,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

item_light = addModel("item_light", 21, 25,
[[
X..
X..
XXX
XX.
]])
addItemAnim(item_light, "images/bathroom/hajzl.png")

item_light = addModel("item_light", 2, 21,
[[
X..
X..
XXX
XX.
]])
addItemAnim(item_light, "images/bathroom/hajzl.png")

item_light = addModel("item_light", 15, 26,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/bathroom/bedna.png")

item_light = addModel("item_light", 16, 23,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/bathroom/radio.png")

item_light = addModel("item_light", 17, 20,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/bathroom/kufr.png")

item_light = addModel("item_light", 16, 17,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/bathroom/kos.png")

whirlpool = addModel("item_light", 21, 17,
[[
XXX
XXX
XXX
XXX
]])
addItemAnim(whirlpool, "images/bathroom/pracka_00.png")
-- extsize=9; first="pracka1.BMP"

item_light = addModel("item_light", 3, 19,
[[
X
]])
addItemAnim(item_light, "images/bathroom/hajzlak.png")

item_light = addModel("item_light", 19, 28,
[[
X
]])
addItemAnim(item_light, "images/bathroom/shell1.png")

item_light = addModel("item_light", 26, 28,
[[
X
]])
addItemAnim(item_light, "images/bathroom/hajzlak.png")

item_light = addModel("item_light", 4, 2,
[[
X
]])
addItemAnim(item_light, "images/bathroom/balonek1.png")

item_light = addModel("item_light", 25, 19,
[[
X
X
]])
addItemAnim(item_light, "images/bathroom/sapon.png")

sprc = addModel("item_light", 4, 1,
[[
.XXXXXX
.X....X
.X.....
.X.....
.X.....
.X.....
.X.....
.X.....
.X.....
XXX....
]])
addItemAnim(sprc, "images/bathroom/sprcha.png")

item_light = addModel("item_light", 13, 1,
[[
...X.X...
XXXXXXXXX
]])
addItemAnim(item_light, "images/bathroom/ploutve.png")

item_light = addModel("item_light", 2, 14,
[[
.X.....
XXXXXXX
]])
addItemAnim(item_light, "images/bathroom/kartac.png")

item_heavy = addModel("item_heavy", 8, 27,
[[
X
X
]])
addItemAnim(item_heavy, "images/bathroom/20-ocel.png")

item_light = addModel("item_light", 1, 4,
[[
XXX
.X.
]])
addItemAnim(item_light, "images/bathroom/kvetinac.png")

item_light = addModel("item_light", 3, 3,
[[
XX
]])
addItemAnim(item_light, "images/bathroom/bota.png")

item_light = addModel("item_light", 2, 6,
[[
XX
]])
addItemAnim(item_light, "images/bathroom/botka.png")

item_light = addModel("item_light", 2, 7,
[[
XX
XX
]])
addItemAnim(item_light, "images/bathroom/klobouk.png")

item_light = addModel("item_light", 1, 7,
[[
X.
X.
XX
XX
]])
addItemAnim(item_light, "images/bathroom/zidle.png")

item_light = addModel("item_light", 26, 1,
[[
X
]])
addItemAnim(item_light, "images/bathroom/hajzlak.png")

item_light = addModel("item_light", 28, 20,
[[
X
]])
addItemAnim(item_light, "images/bathroom/balonek1.png")

item_light = addModel("item_light", 28, 10,
[[
X
]])
addItemAnim(item_light, "images/bathroom/koulea.png")

item_light = addModel("item_light", 29, 6,
[[
X
]])
addItemAnim(item_light, "images/bathroom/balonek2.png")

item_light = addModel("item_light", 27, 14,
[[
XX
]])
addItemAnim(item_light, "images/bathroom/musla.png")



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

