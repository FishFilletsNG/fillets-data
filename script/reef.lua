file_include("script/level_funcs.lua")

createRoom(52, 15, "images/reef/utes-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXX................XX....XXXXXXXXX
XXXXXXXXXXXXXXXXXXXX..........XXX...XXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXX..........XXXXXXXXXXXXXXXXXXXXXXX
.XXXXXXXXXXXXXXXXXX...........XXXXXXXXX.............
.XXXXXXXXXXXXXXXXX............XXXX.................X
..XXXXXXXXXXXXXXXX......XXXXXXX...................XX
...XXXXXXXXXXXXXX................................XXX
......XXXXXXXXXX.........................XXXXXXXXXXX
......XXXXXXXXX..........................XXXXXXXXXXX
.......XXXXXX.......................................
..................................................XX
X................................................XXX
X......X.XXXXXXXX...............................XXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX........XXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/reef/utes-w.png")

item_heavy = addModel("item_heavy", 20, 2,
[[
XXXXX....
....X....
....XXXXX
]])
addItemAnim(item_heavy, "images/reef/1-ocel.png")

matrace = addModel("item_light", 27, 12,
[[
XXXX
]])
addItemAnim(matrace, "images/reef/matrace.png")

small = addModel("fish_small", 44, 4,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 43, 10,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

lastura = addModel("item_light", 5, 11,
[[
XX
.X
]])
addItemAnim(lastura, "images/reef/plz_00.png")
-- extsize=6; first="plz0.BMP"

snek1 = addModel("item_light", 41, 6,
[[
X
]])
addItemAnim(snek1, "images/reef/malysnek_00.png")
-- extsize=3; first="malysnek1.BMP"

snek2 = addModel("item_light", 43, 6,
[[
X
]])
addItemAnim(snek2, "images/reef/malysnek_00.png")
-- extsize=3; first="malysnek1.BMP"

dvere = addModel("item_light", 15, 10,
[[
X
X
]])
addItemAnim(dvere, "images/reef/musla.png")



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

