file_include("script/level_funcs.lua")

createRoom(41, 38, "images/propulsion/pohon-p.png")

wall = addModel("item_fixed", 0, 0,
[[
........................................XXX
XXX...XXX...XXX...XXX...XXX...XXX...XXXXXXX
X......................................XXXX
.......................................XXXX
X......................................XXXX
X......................................XXXX
X......................................XXXX
X......................................XXXX
X....XXXX.......................XXXXX..XXXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
X.......................................XXX
XXXXXXXX..X..X..X..X..X..XXXX...........XXX
X.........................X.X...........XXX
X.........................X.X...........XXX
X.........................X.X...........XXX
X.......................................XXX
X.....XX...................XX...........XXX
X.....XX.....................X..........XXX
X.....XX.....................X..........XXX
X.....XX.....................X..........XXX
X.....XX.....................X..........XXX
X.....XX....XXXXXXXXXXXX..XXXX..........XXX
........................................XXX
........................................XXX
......XX................................XXX
......XX..........X.....................XXX
X.....XX.......XXXX.....................XXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/propulsion/pohon-w.png")

veve = addModel("item_light", 16, 24,
[[
XXXX.
XXXXX
XXXXX
XXXX.
]])
addItemAnim(veve, "images/propulsion/pohon_00.png")
-- extsize=11; first="pohon0.BMP"

bublik = addModel("item_light", 13, 28,
[[
...XXX..
XXXXXXXX
XXXXXXXX
]])
addItemAnim(bublik, "images/propulsion/podstavec_00.png")
-- extsize=3; first="podstavec0.BMP"

hadice = addModel("item_light", 14, 25,
[[
XX
X.
X.
X.
]])
addItemAnim(hadice, "images/propulsion/hadice_00.png")
-- extsize=1; first="hadice0.BMP"

item_light = addModel("item_light", 21, 22,
[[
..XXX
..X..
..X..
XXX..
..X..
]])
addItemAnim(item_light, "images/propulsion/rura.png")

item_light = addModel("item_light", 23, 27,
[[
XXX
XXX
XXX
XXX
]])
addItemAnim(item_light, "images/propulsion/cola.png")

nasrany = addModel("item_light", 6, 3,
[[
.XXX.
XXXXX
..X..
..X..
.XXX.
]])
addItemAnim(nasrany, "images/propulsion/ufo_00.png")
-- extsize=10; first="ufo0.BMP"

item_heavy = addModel("item_heavy", 2, 0,
[[
XXX
.X.
.X.
.X.
.X.
.X.
.X.
.X.
.XX
]])
addItemAnim(item_heavy, "images/propulsion/7-ocel.png")

item_heavy = addModel("item_heavy", 20, 0,
[[
XXX
.X.
.X.
.X.
.X.
.X.
.X.
.X.
.X.
]])
addItemAnim(item_heavy, "images/propulsion/8-ocel.png")

item_light = addModel("item_light", 21, 29,
[[
X.
XX
]])
addItemAnim(item_light, "images/propulsion/draty_.png")

smutny = addModel("item_light", 33, 3,
[[
XX
XX
XX
XX
XX
]])
addItemAnim(smutny, "images/propulsion/ufon-_00.png")
-- extsize=9; first="ufon-0.BMP"

item_heavy = addModel("item_heavy", 7, 29,
[[
...X....
...X....
...X....
XXXXXXXX
XXX....X
]])
addItemAnim(item_heavy, "images/propulsion/11-ocel.png")

item_heavy = addModel("item_heavy", 27, 7,
[[
...XXX
....X.
....X.
...XX.
...X..
..XX..
..X...
.XX...
.X....
XX....
]])
addItemAnim(item_heavy, "images/propulsion/12-ocel.png")

item_light = addModel("item_light", 33, 33,
[[
X....XX
XXXXXXX
]])
addItemAnim(item_light, "images/propulsion/kamna.png")

item_light = addModel("item_light", 35, 35,
[[
XX
.X
]])
addItemAnim(item_light, "images/propulsion/volant.png")

item_heavy = addModel("item_heavy", 14, 0,
[[
XXX
.X.
.X.
.X.
.X.
.X.
.X.
.X.
.X.
XX.
]])
addItemAnim(item_heavy, "images/propulsion/15-ocel.png")

item_heavy = addModel("item_heavy", 27, 22,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/propulsion/16-ocel.png")

item_light = addModel("item_light", 27, 25,
[[
X
]])
addItemAnim(item_light, "images/propulsion/plutonium-1a.png")

plut1 = addModel("item_light", 33, 32,
[[
XXXX
]])
addItemAnim(plut1, "images/propulsion/plutonium-4-_00.png")
-- extsize=2; first="plutonium-4-1.BMP"

item_light = addModel("item_light", 5, 36,
[[
X
]])
addItemAnim(item_light, "images/propulsion/matka_a.png")

small = addModel("fish_small", 32, 26,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 14, 12,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

item_light = addModel("item_light", 28, 25,
[[
X
]])
addItemAnim(item_light, "images/propulsion/plutonium-1a.png")



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

