file_include("script/level_funcs.lua")

createRoom(46, 20, "images/bathyscaph/batyskaf-p.png")

wall = addModel("item_fixed", 0, 0,
[[
.............................................
.............................................
..................XXXXXXXXXX.................
...............XXXXXXX..XXXXXXX..............
...XX.........XXXXX........XXXXX.........XX..
..XXXXXXXXXXXXXX..............XXXXXXXXXXXXXX.
..XXXXXXXXXXXXX................XXXXXXXXXXXXX.
...XX.......XX.X................XX.......XX..
...XX......XX.....X..............XX......XX..
...XX......X......................X......XX..
...XX......X.............................XX..
...XX......X..........XXXXXXXX...........XX..
..XXXX.....X....................X.X.....XXXX.
.XXXXXX....X....................X.X....XXXXXX
.XX..XX....X......................X....XX..XX
.XX..XX....X......................X....XX..XX
..X..X......XXXXXXXXXXXXXXXXXXXXXX......X..X.
..............XXXXXXXXXXXXXXXXXX.............
...................XXXXXXXX..................
]])
addItemAnim(wall, "images/bathyscaph/batyskaf-w.png")

small = addModel("fish_small", 26, 8,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 15, 11,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

item_heavy = addModel("item_heavy", 29, 8,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/bathyscaph/batyskaf-3-tmp.png")

item_heavy = addModel("item_heavy", 29, 5,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/bathyscaph/batyskaf-3-tmp.png")

dhled = addModel("item_light", 18, 5,
[[
X
X
X
]])
addItemAnim(dhled, "images/bathyscaph/dalekohled_00.png")
-- extsize=1; first="dalekohled1.BMP"

snek = addModel("item_light", 28, 14,
[[
X.X
XXX
]])
addItemAnim(snek, "images/bathyscaph/snek_00.png")
-- extsize=1; first="snek1.BMP"

ibudik = addModel("item_light", 15, 15,
[[
X
]])
addItemAnim(ibudik, "images/bathyscaph/budik_00.png")
-- extsize=1; first="budik0.BMP"

mikroskop = addModel("item_light", 22, 4,
[[
.XX
XX.
.X.
]])
addItemAnim(mikroskop, "images/bathyscaph/mikroskop_00.png")
-- extsize=2; first="mikroskop0.BMP"

zluty = addModel("item_light", 22, 6,
[[
....
XXXX
X..X
]])
addItemAnim(zluty, "images/bathyscaph/sluch_00.png")
-- extsize=2; first="sluch1.BMP"

mtel = addModel("item_light", 20, 14,
[[
X..X
XXXX
]])
addItemAnim(mtel, "images/bathyscaph/mtelefon.png")

modry = addModel("item_light", 20, 11,
[[
....
XXXX
X..X
]])
addItemAnim(modry, "images/bathyscaph/msluch_00.png")
-- extsize=2; first="msluch1.BMP"

ztel = addModel("item_light", 22, 9,
[[
X..X
XXXX
]])
addItemAnim(ztel, "images/bathyscaph/telefon.png")



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

