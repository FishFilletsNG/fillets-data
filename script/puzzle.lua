file_include("script/level_funcs.lua")

createRoom(53, 39, "images/puzzle/puclik-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
X....X...............................................
X....X...............................................
X..X.X.....................................X.........
XXXXXX...............................................
X.X..X...............................................
X....X............................XXX................
X....X...............................................
X....X...............................................
XXXXXX...............................................
X....................................................
X.................................................XXX
X....X.....X................X......................XX
X....................................................
X....................................................
X....X............................................XXX
X....X............................................XXX
X.................................................XXX
X.................................................XXX
X....X............................................XXX
X....X............................................XXX
X.................................................XXX
X.................................................XXX
X....X............................................XXX
X....X............................................XXX
X.................................................XXX
X.................................................XXX
X....X............................................XXX
X....X............................................XXX
X.................................................XXX
X.................................................XXX
X....X............................................XXX
X....X...............................................
X.................................................XXX
X.................................................XXX
X.................................................XXX
X......X.....................XXX...X...XXXXXXXX...XXX
XXXXXXXX...........................X..............XXX
XXXXXXXXXXX....XXXXXXXXXXXXXXXXXXXXXX.XXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/puzzle/puclik-w.png")

prvni = addModel("item_light", 37, 24,
[[
..X.X
XXXXX
XXXX.
XXXX.
XXXXX
]])
addItemAnim(prvni, "images/puzzle/01-mona_00.png")
-- extsize=4; first="01-mona1.bmp"

item_light = addModel("item_light", 29, 9,
[[
..X..
.XXXX
XXXXX
XXXX.
.XXX.
]])
addItemAnim(item_light, "images/puzzle/02-mona_00.png")
-- extsize=4; first="02-mona1.bmp"

item_light = addModel("item_light", 19, 7,
[[
..XX.
.XXX.
.XXXX
XXXXX
XXXXX
]])
addItemAnim(item_light, "images/puzzle/03-mona_00.png")
-- extsize=4; first="03-mona1.bmp"

item_light = addModel("item_light", 9, 7,
[[
....X
XXXXX
.XXXX
.XXXX
.XXXX
]])
addItemAnim(item_light, "images/puzzle/04-mona_00.png")
-- extsize=4; first="04-mona1.bmp"

item_light = addModel("item_light", 29, 24,
[[
..XX.
XXXXX
XXXXX
XXXXX
XX.X.
]])
addItemAnim(item_light, "images/puzzle/05-mona_00.png")
-- extsize=4; first="05-mona1.bmp"

item_light = addModel("item_light", 41, 20,
[[
.X.X.
.XXX.
.XXXX
.XXXX
.X.X.
]])
addItemAnim(item_light, "images/puzzle/06-mona_00.png")
-- extsize=4; first="06-mona1.bmp"

item_light = addModel("item_light", 24, 7,
[[
XXXXX
XXXXX
.XXXX
.XXXX
XX..X
]])
addItemAnim(item_light, "images/puzzle/07-mona_00.png")
-- extsize=4; first="07-mona1.bmp"

item_light = addModel("item_light", 11, 1,
[[
..X.X
.XXXX
.XXXX
.XXXX
.XXX.
]])
addItemAnim(item_light, "images/puzzle/08-mona_00.png")
-- extsize=4; first="08-mona1.bmp"

item_light = addModel("item_light", 37, 29,
[[
XXX..
XXXX.
XXXX.
XXXXX
XX..X
]])
addItemAnim(item_light, "images/puzzle/09-mona_00.png")
-- extsize=4; first="09-mona1.bmp"

item_light = addModel("item_light", 37, 19,
[[
..X..
XXXX.
XXXXX
.XXX.
..X..
]])
addItemAnim(item_light, "images/puzzle/10-mona_00.png")
-- extsize=4; first="10-mona1.bmp"

item_light = addModel("item_light", 36, 11,
[[
..X..
XXXXX
.XXX.
XXXX.
]])
addItemAnim(item_light, "images/puzzle/11-mona_00.png")
-- extsize=4; first="11-mona1.bmp"

item_light = addModel("item_light", 16, 1,
[[
.XX..
.XXXX
XXXXX
XXXXX
.X.X.
]])
addItemAnim(item_light, "images/puzzle/12-mona_00.png")
-- extsize=4; first="12-mona1.bmp"

item_light = addModel("item_light", 42, 25,
[[
X.X..
XXXX.
XXXXX
XXXX.
...X.
]])
addItemAnim(item_light, "images/puzzle/13-mona_00.png")
-- extsize=4; first="13-mona1.bmp"

item_light = addModel("item_light", 29, 19,
[[
XX.XX
XXXXX
.XXX.
XXXXX
XX.XX
]])
addItemAnim(item_light, "images/puzzle/14-mona_00.png")
-- extsize=4; first="14-mona1.bmp"

item_light = addModel("item_light", 37, 15,
[[
.X...
.XXX.
XXXX.
.XXX.
.X.XX
]])
addItemAnim(item_light, "images/puzzle/15-mona_00.png")
-- extsize=4; first="15-mona1.bmp"

item_light = addModel("item_light", 14, 7,
[[
..X.X
XXXXX
XXXXX
XXXXX
...XX
]])
addItemAnim(item_light, "images/puzzle/16-mona_00.png")
-- extsize=4; first="16-mona1.bmp"

item_light = addModel("item_light", 42, 30,
[[
XXXXX
XXXX.
XXXX.
XXXXX
.X.X.
]])
addItemAnim(item_light, "images/puzzle/17-mona_00.png")
-- extsize=4; first="17-mona1.bmp"

item_light = addModel("item_light", 30, 29,
[[
.XXXX
XXXXX
XXXX.
.XXX.
..X..
]])
addItemAnim(item_light, "images/puzzle/18-mona_00.png")
-- extsize=4; first="18-mona1.bmp"

item_light = addModel("item_light", 29, 14,
[[
.XXX.
.XXX.
XXXXX
XXXX.
..XXX
]])
addItemAnim(item_light, "images/puzzle/19-mona_00.png")
-- extsize=4; first="19-mona1.bmp"

item_light = addModel("item_light", 29, 5,
[[
XXXXX
XXXXX
.XXXX
XXXXX
.X.X.
]])
addItemAnim(item_light, "images/puzzle/20-mona_00.png")
-- extsize=4; first="20-mona1.bmp"

item_heavy = addModel("item_heavy", 11, 13,
[[
XXXXXXXXXXXXXXXXXX.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................X.
.................XX
.................X.
.................X.
XXXXXXXXXXXXXXXXXX.
]])
addItemAnim(item_heavy, "images/puzzle/puclik-21-tmp.png")

item_heavy = addModel("item_heavy", 30, 33,
[[
.X
XX
.X
]])
addItemAnim(item_heavy, "images/puzzle/puclik-22-tmp.png")

item_heavy = addModel("item_heavy", 39, 34,
[[
X
X
]])
addItemAnim(item_heavy, "images/puzzle/puclik-23-tmp.png")

item_heavy = addModel("item_heavy", 44, 34,
[[
X
X
]])
addItemAnim(item_heavy, "images/puzzle/puclik-24-tmp.png")

pld = addModel("item_light", 44, 12,
[[
..XXX..
.XXXXX.
XXXXXXX
..XXXX.
]])
addItemAnim(pld, "images/puzzle/pld_00.png")
-- extsize=15; first="pld 1.BMP"

item_heavy = addModel("item_heavy", 42, 1,
[[
XXXXXXXXXXX
X.........X
X.........X
.....XXX..X
.....XXXX.X
.......XX.X
XXXXXXXXX.X
X......X..X
X....XXXXXX
.....X.X.XX
.....XXX...
]])
addItemAnim(item_heavy, "images/puzzle/puclik-26-tmp.png")

item_heavy = addModel("item_heavy", 12, 12,
[[
XXXXXXXXXXXXXXXX
]])
addItemAnim(item_heavy, "images/puzzle/puclik-27-tmp.png")

item_heavy = addModel("item_heavy", 6, 35,
[[
XXXXX.
..XXXX
]])
addItemAnim(item_heavy, "images/puzzle/puclik-28-tmp.png")

item_heavy = addModel("item_heavy", 14, 6,
[[
XXX
]])
addItemAnim(item_heavy, "images/puzzle/puclik-29-tmp.png")

item_heavy = addModel("item_heavy", 11, 6,
[[
XXX
]])
addItemAnim(item_heavy, "images/puzzle/puclik-30-tmp.png")

item_heavy = addModel("item_heavy", 17, 6,
[[
XXXXXXXXXXXX
]])
addItemAnim(item_heavy, "images/puzzle/puclik-31-tmp.png")

small = addModel("fish_small", 35, 8,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 28, 1,
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

