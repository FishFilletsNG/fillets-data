file_include("script/level_funcs.lua")

createRoom(43, 28, "images/pyramid/bunker-p.png")

wall = addModel("item_fixed", 0, 0,
[[
...........................................
....................XXX....................
...................XXXXX...................
..................XXX.XXX..................
.................XXX...XXX.................
................XXX.....XXX................
...............XXX.......XXX...............
..............XXX.........XXX..............
.............XXX...........XXX.............
............XXX.............XXX............
...........XXX...............XXX...........
..........XXX.................XXX..........
.........XXX............X......XXX.........
........XXX...X.................XXX........
.......XXX.......................XXX.......
......XXX.........................XXX......
.....XXX...........................XXX.....
....XXX.........................X...XXX....
...XXX....XXX..X.X..X................XXX...
..XXX.....XXX.........................XXX..
.XXX..X...XXXX..........X..X...........XXX.
XXX..XX...XXX.................X.........XXX
......X..........................X.........
......X.............................X......
............XXXXXXXXXXXX...............X...
X...........XX.........X..................X
X......................XXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/pyramid/bunker-w.png")

small = addModel("fish_small", 37, 23,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 35, 24,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

faraon = addModel("item_light", 18, 20,
[[
XXX
XXX
XXX
.X.
]])
addItemAnim(faraon, "images/pyramid/faraon_00.png")
-- extsize=2; first="faraon 1.BMP"

item_heavy = addModel("item_heavy", 20, 17,
[[
XX
.X
.X
]])
addItemAnim(item_heavy, "images/pyramid/bunker-4-tmp.png")

deska2 = addModel("item_light", 11, 17,
[[
XX
]])
addItemAnim(deska2, "images/pyramid/desticka.png")

deska1 = addModel("item_light", 12, 16,
[[
XX
]])
addItemAnim(deska1, "images/pyramid/desticka.png")

deska3 = addModel("item_light", 33, 21,
[[
XX
]])
addItemAnim(deska3, "images/pyramid/desticka.png")

item_light = addModel("item_light", 15, 23,
[[
X
]])
addItemAnim(item_light, "images/pyramid/scarab.png")

item_light = addModel("item_light", 23, 11,
[[
XXX
]])
addItemAnim(item_light, "images/pyramid/mumysokol.png")

item_light = addModel("item_light", 21, 9,
[[
XXXXX
X...X
]])
addItemAnim(item_light, "images/pyramid/stul.png")

stela = addModel("item_light", 27, 14,
[[
XX
XX
XX
XX
XX
XX
]])
addItemAnim(stela, "images/pyramid/stela_00.png")
-- extsize=5; first="stela 1.BMP"

item_heavy = addModel("item_heavy", 6, 24,
[[
X....X
X....X
XXXXXX
]])
addItemAnim(item_heavy, "images/pyramid/bunker-14-tmp.png")

item_light = addModel("item_light", 17, 26,
[[
XXX
]])
addItemAnim(item_light, "images/pyramid/mumysokol.png")

item_light = addModel("item_light", 32, 14,
[[
X
X
X
]])
addItemAnim(item_light, "images/pyramid/mumycat.png")

item_light = addModel("item_light", 23, 23,
[[
X
]])
addItemAnim(item_light, "images/pyramid/scarab.png")

item_light = addModel("item_light", 21, 23,
[[
X
]])
addItemAnim(item_light, "images/pyramid/scarab.png")

item_light = addModel("item_light", 14, 10,
[[
X
X
X
]])
addItemAnim(item_light, "images/pyramid/mumycat.png")

cerv = addModel("item_light", 37, 16,
[[
XX
.X
]])
addItemAnim(cerv, "images/pyramid/cerv_00.png")
-- extsize=7; first="Cerv0.BMP"



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

