file_include("script/level_funcs.lua")

createRoom(51, 32, "images/tetris/tetris-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXX...............XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXX...............XXXXXXXXXXXX
XXXXX..................................XXXXXXXXXXXX
X......................................XXXXXXXXXXXX
X......................................XXXXXXXXXXXX
XXXXX..................................XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX..........XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXX............XXXXXXXXXXXX
XXXXXXXXXXXX...........................XXXXXXXXXXXX
XXXXXXXXXXXXX...............X..........XXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXX..........XXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXX..........XXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXX..........XXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXX...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/tetris/tetris-w2.png")

item_light = addModel("item_light", 28, 13,
[[
XXXX
]])
addItemAnim(item_light, "images/tetris/dlouha.png")

item_light = addModel("item_light", 26, 12,
[[
XX
XX
]])
addItemAnim(item_light, "images/tetris/ctverec.png")

item_light = addModel("item_light", 23, 12,
[[
.XX
XX.
]])
addItemAnim(item_light, "images/tetris/zidle2l.png")

item_light = addModel("item_light", 20, 12,
[[
XXX
..X
]])
addItemAnim(item_light, "images/tetris/elko2o.png")

item_light = addModel("item_light", 18, 11,
[[
.X
XX
X.
]])
addItemAnim(item_light, "images/tetris/zidle1s.png")

item_light = addModel("item_light", 16, 11,
[[
X.
XX
X.
]])
addItemAnim(item_light, "images/tetris/lods.png")

item_light = addModel("item_light", 13, 12,
[[
XX.
.XX
]])
addItemAnim(item_light, "images/tetris/zidle1l.png")

item_light = addModel("item_light", 10, 12,
[[
..X
XXX
]])
addItemAnim(item_light, "images/tetris/elko1l.png")

item_light = addModel("item_light", 8, 12,
[[
XXX
.X.
]])
addItemAnim(item_light, "images/tetris/lodo.png")

item_light = addModel("item_light", 5, 12,
[[
XXX
X..
]])
addItemAnim(item_light, "images/tetris/elko1o.png")

item_light = addModel("item_light", 12, 15,
[[
...............X.
XXXXXXXXXXXXXXXXX
.X...X...........
]])
addItemAnim(item_light, "images/tetris/vozik.png")

trubka = addModel("item_heavy", 28, 3,
[[
.........X
.........X
.........X
.........X
.........X
.........X
XXXXXXXXXX
]])
addItemAnim(trubka, "images/tetris/12-ocel.png")

item_heavy = addModel("item_heavy", 5, 10,
[[
XXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(item_heavy, "images/tetris/13-ocel.png")

big = addModel("fish_big", 1, 11,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

small = addModel("fish_small", 14, 19,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")



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

