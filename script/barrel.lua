file_include("script/level_funcs.lua")

createRoom(50, 39, "images/barrel/barely-poz.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXX.........XXX.....XXXXXXXXXXXXXXXXXXXX.
XXXXXXX..XXX.........X................X.XXXXXXXX..
XXXXXX...XX......................XXX........XXXX..
XXXX.................X...........................X
XXXXX................X..........................XX
XXXXX..XXX......................................XX
XXXXX.XXXX............X.........................XX
XXXXXXXXXX...........XX........................XXX
XXXXXXXX..............X.......................XXXX
XXXXXXXXX.....................................XXXX
XXXXXXXXXXX..........XX.......................XXXX
XXXXXXXXXXX...........X.......................XXXX
XXXXXXXXXXX...................................XXXX
XXXXXXXXXXX..........X........................XXXX
XXXXXXXXXX...........X.........................XXX
XXXXXXXXXXX.........XX.........................XXX
XXXXXXXXXXX...........XXX........XXXX.........XXXX
XXXXXXXXXXX............XXXX..XXXX..X...........XXX
XXXXXXXXXX......................X...............XX
XXXXXXX........................................XXX
XXXXXX........................................XXXX
XXXXXXX........................................XXX
XXXXXXX........................................XXX
XXXXXXXX.......................................XXX
XXXXXXXXX......................................XXX
XXXXXXXXX......................................XXX
XXXXXXXXX......................................XXX
XXXXXXXXX......................................XXX
XXXXXXXXX......................................XXX
XXXXXX.........................................XXX
XXXXXX.......X.................................XXX
XXX...........XXXX...........................XXXXX
XX.............XXXXXXXXXXXXXXXXXXXXX........XXXXXX
......................................X..XXXXXXXXX
XXX..................................XXX.XXXXXXXXX
XXXXXX....XXXXXX....................XXXX.XXXXXXXXX
XXXXXXXXXXXXXXXX.........XXX.......XXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXX..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/barrel/barely-okoli.png")

barel = addModel("item_light", 29, 3,
[[
XXXXXXXXX
.XXXXXXX.
.XXXXXXX.
.XXXXXXX.
XXXXXXXXX
.XXXXXXX.
.XXXXXXX.
.XXXXXXX.
XXXXXXXXX
.XXXXXXX.
.XXXXXXX.
.XXXXXXX.
XXXXXXXXX
]])
addItemAnim(barel, "images/barrel/barel_00.png")
-- extsize=4; first="barel1.bmp"

small = addModel("fish_small", 23, 11,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 41, 10,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

kachnicka = addModel("item_light", 19, 34,
[[
..XX
XXX.
.X..
]])
addItemAnim(kachnicka, "images/barrel/kachna_00.png")
-- extsize=8; first="kachna0.BMP"

had = addModel("item_light", 10, 14,
[[
XX....
.X....
.XX...
..X...
..XX..
...X..
..XX..
..X...
..XXXX
....X.
]])
addItemAnim(had, "images/barrel/had_00.png")
-- extsize=11; first="had1.BMP"

ocicko = addModel("item_light", 19, 13,
[[
X
]])
addItemAnim(ocicko, "images/barrel/oko_00.png")
-- extsize=4; first="oko0.bmp"

kukajda = addModel("item_light", 37, 14,
[[
XXXX
.XXX
]])
addItemAnim(kukajda, "images/barrel/kukajda_00.png")
-- extsize=17; first="kukajda0.BMP"

killer = addModel("item_light", 28, 28,
[[
XXX.
XXXX
..X.
.XX.
]])
addItemAnim(killer, "images/barrel/killer_00.png")
-- extsize=5; first="killer1.BMP"

hlubinna = addModel("item_light", 37, 5,
[[
X..
XX.
.X.
.XX
..X
]])
addItemAnim(hlubinna, "images/barrel/hlubinna_00.png")
-- extsize=8; first="hlubinna0.BMP"

krabik = addModel("item_light", 18, 14,
[[
XXX
]])
addItemAnim(krabik, "images/barrel/krab_00.png")
-- extsize=5; first="krab0.BMP"

item_heavy = addModel("item_heavy", 43, 29,
[[
XX
.X
.X
]])
addItemAnim(item_heavy, "images/barrel/12-ocel.png")

baget = addModel("item_light", 21, 2,
[[
XX....
.XXXXX
]])
addItemAnim(baget, "images/barrel/baget_00.png")
-- extsize=1; first="baget0.BMP"

nozka = addModel("item_light", 23, 28,
[[
X.
X.
X.
XX
]])
addItemAnim(nozka, "images/barrel/noha_00.png")
-- extsize=11; first="noha0.BMP"

pldik = addModel("item_light", 38, 32,
[[
XXX
]])
addItemAnim(pldik, "images/barrel/pldik_00.png")
-- extsize=13; first="pldik0.BMP"

shark = addModel("item_light", 22, 0,
[[
......X
XXXXXXX
....X..
]])
addItemAnim(shark, "images/barrel/shark_00.png")
-- extsize=3; first="shark1.bmp"

pldotec = addModel("item_light", 5, 29,
[[
..XXX..
.XXXXX.
XXXXXXX
..XXXX.
]])
addItemAnim(pldotec, "images/barrel/pld_00.png")
-- extsize=15; first="pld 1.BMP"

item_heavy = addModel("item_heavy", 28, 1,
[[
.XXXXX
XX....
X.....
]])
addItemAnim(item_heavy, "images/barrel/18-ocel.png")

levahlava = addModel("item_light", 13, 29,
[[
.......
.X.XX.X
]])
addItemAnim(levahlava, "images/barrel/double1_00.png")
-- extsize=6; first="double1_0.BMP"

pravahlava = addModel("item_light", 13, 29,
[[
XX......
..X..X..
......XX
]])
addItemAnim(pravahlava, "images/barrel/double2_00.png")
-- extsize=6; first="double2_0.BMP"



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

