file_include("script/level_funcs.lua")

createRoom(40, 35, "images/cellar/pravidla-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXX.............XXXXXX.....XXXX
XXXXXXXXX.X...............X...........XX
XXXXXXXX........XXXXX..................X
XXXXXX.............XX..........XXX.....X
XXXXX..................................X
XXXXXX.......X...XXXXXXXXX............XX
XXXXXXX......XX.XXXXXXXXXXX..........XXX
XXXXXXXX......X.X....XXXXXXXX........XXX
XXX..XXX.............XXXX...........XXXX
XX.....XX............X..............XXXX
XX.....XXXXXXXX.X....XX..............XXX
XX......XXXXXXXXX....XXXX............XXX
XX......XXXXXXXX.....XXXXX......XX...XXX
XX........XXXX........XX........XXXXXXXX
X.....................XX..........XXXXXX
X.....................XXX...........XXXX
X....................XXXX............XXX
X.....XXXXXXXXXXXXXXXXXX.............XXX
X......................X.............XXX
...................................XXXXX
......................XXXXXXXX....XXXXXX
XXX.XXXXXXXXXXXXXXXXXXXXXXXXX......XXXXX
XX.......X.............XXXXXX.........XX
XX.......................XXXX..........X
X.........................XXX..........X
X..........XX...............X..........X
X........XXXX.X........................X
X........XXXXXX........................X
X........XXXXXXX...........XXXX........X
X........XXXXXXXXXX.......XXXXX.......XX
XXXXX....XXXXXXXXXXXXXXXXXXXXXX......XXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX...XXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/cellar/pravidla-w.png")

small = addModel("fish_small", 2, 30,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 5, 31,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

tal = addModel("item_light", 2, 29,
[[
XXXXX
]])
addItemAnim(tal, "images/cellar/misa.png")

item_light = addModel("item_light", 4, 28,
[[
XX
]])
addItemAnim(item_light, "images/cellar/cup.png")

snek = addModel("item_light", 5, 27,
[[
X
]])
addItemAnim(snek, "images/cellar/maly_snek_00.png")
-- extsize=3; first="maly snek1.BMP"

val1 = addModel("item_heavy", 11, 25,
[[
X
X
]])
addItemAnim(val1, "images/cellar/6-ocel.png")

sek = addModel("item_light", 10, 24,
[[
XXXXX
....X
]])
addItemAnim(sek, "images/cellar/sekera_00.png")
-- extsize=2; first="sekera0.BMP"

jah = addModel("item_light", 22, 29,
[[
XX
XX
XX
]])
addItemAnim(jah, "images/cellar/marmelada.png")

med = addModel("item_light", 29, 27,
[[
XX
XX
XX
]])
addItemAnim(med, "images/cellar/med.png")

mer = addModel("item_light", 29, 24,
[[
XX
XX
XX
]])
addItemAnim(mer, "images/cellar/merunkova.png")

item_heavy = addModel("item_heavy", 22, 20,
[[
X
]])
addItemAnim(item_heavy, "images/cellar/11-ocel.png")

item_light = addModel("item_light", 22, 21,
[[
X
]])
addItemAnim(item_light, "images/cellar/shell1.png")

soup = addModel("item_heavy", 27, 12,
[[
...X.....
XXXXXXXXX
]])
addItemAnim(soup, "images/cellar/13-ocel.png")

knih = addModel("item_light", 28, 8,
[[
XXX
]])
addItemAnim(knih, "images/cellar/kniha.png")

val2 = addModel("item_heavy", 18, 2,
[[
X
X
]])
addItemAnim(val2, "images/cellar/15-ocel.png")

svic = addModel("item_light", 6, 11,
[[
X
X
X
X
X
X
X
X
]])
addItemAnim(svic, "images/cellar/svicka.png")



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

