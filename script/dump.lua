file_include("script/level_funcs.lua")

createRoom(43, 32, "images/dump/smetak-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXX....X...................................
XXX......X..............................XXX
XXXX.....X...................XXXXXXX....XXX
XXXX.....X..............................XXX
XXXXX....X..............................XXX
XXXXXX...X.............................XXXX
XXXXXXXXXX..............................XXX
...............................X........XXX
...............................X........XXX
XXXXXXXXXXX.X.XXXXXX.X..............XXX.XXX
XXXX........X.XXXXXX................XX..XXX
XXXX....................................XXX
XXXX...XXXXX...XXXXXX..........X........XXX
XXXX.....XX....X.X.............X........XXX
XXX.........X....X................XX....XXX
XXX................................X....XXX
XXX.......XXXX.XXXXXXX.XXXXX.X..........XXX
XXX...............XXXX.XXXXX............XXX
XXX..................X............XX....XXX
XXX....X...........................X....XXX
XXX....XXXXXXX.X...........XX...........XXX
XXX........XXXXX.X......................XXX
XXXXXXXX...........XX...................XXX
XXXX..............XXXXXX...XXXXX..XXXXX.XXX
XXXX...XX..X...............XXXXXXXXXXXXXXXX
XXXX.................XXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/dump/smetak-w.png")

meduza = addModel("item_light", 11, 11,
[[
X
X
X
]])
addItemAnim(meduza, "images/dump/medusa_00.png")
-- extsize=2; first="medusa1.BMP"

mic = addModel("item_light", 11, 14,
[[
X
]])
addItemAnim(mic, "images/dump/balonek_00.png")
-- extsize=3; first="balonek1.bmp"

item_light = addModel("item_light", 16, 16,
[[
X
]])
addItemAnim(item_light, "images/dump/matka_a.png")

item_light = addModel("item_light", 18, 14,
[[
XX
]])
addItemAnim(item_light, "images/dump/cola.png")

item_light = addModel("item_light", 20, 12,
[[
X.
X.
XX
]])
addItemAnim(item_light, "images/dump/zralok.png")

item_light = addModel("item_light", 14, 5,
[[
X
X
X
X
X
X
X
]])
addItemAnim(item_light, "images/dump/zebrik.png")

item_light = addModel("item_light", 10, 21,
[[
X
X
]])
addItemAnim(item_light, "images/dump/amfora_zelena.png")

meduza2 = addModel("item_light", 38, 10,
[[
X
X
]])
addItemAnim(meduza2, "images/dump/meduza_00.png")
-- extsize=1; first="Meduza1.BMP"

meduza1 = addModel("item_light", 36, 10,
[[
X
X
]])
addItemAnim(meduza1, "images/dump/meduzaz_00.png")
-- extsize=1; first="Meduzaz1.BMP"

item_light = addModel("item_light", 37, 10,
[[
X
X
]])
addItemAnim(item_light, "images/dump/flaska.png")

item_light = addModel("item_light", 36, 21,
[[
...X
..XX
.XXX
XXXX
]])
addItemAnim(item_light, "images/dump/harmonika.png")

stonozka = addModel("item_light", 28, 6,
[[
.......X
XXXXXXXX
]])
addItemAnim(stonozka, "images/dump/mnohonozka_00.png")
-- extsize=1; first="mnohonozka0.BMP"

item_heavy = addModel("item_heavy", 29, 8,
[[
XXXXXXX
X.....X
......X
]])
addItemAnim(item_heavy, "images/dump/smetak-13-tmp.png")

item_light = addModel("item_light", 30, 9,
[[
XXXXX
]])
addItemAnim(item_light, "images/dump/stozar_v.png")

item_light = addModel("item_light", 34, 14,
[[
.X
XX
XX
]])
addItemAnim(item_light, "images/dump/kotva.png")

item_light = addModel("item_light", 34, 18,
[[
X.
XX
.X
]])
addItemAnim(item_light, "images/dump/retez.png")

lod = addModel("item_light", 26, 20,
[[
.....X
XXX..X
.XXXXX
.....X
]])
addItemAnim(lod, "images/dump/charon.png")

item_light = addModel("item_light", 37, 25,
[[
X
]])
addItemAnim(item_light, "images/dump/sklenicka_pr.png")

item_heavy = addModel("item_heavy", 28, 16,
[[
X
X
]])
addItemAnim(item_heavy, "images/dump/smetak-19-tmp.png")

item_heavy = addModel("item_heavy", 28, 18,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/dump/smetak-20-tmp.png")

item_light = addModel("item_light", 23, 24,
[[
XX
XX
]])
addItemAnim(item_light, "images/dump/lodnisroub.png")

item_heavy = addModel("item_heavy", 31, 12,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/dump/smetak-20-tmp.png")

ostnatec = addModel("item_light", 15, 8,
[[
.XX
XX.
]])
addItemAnim(ostnatec, "images/dump/ostnatec_00.png")
-- extsize=2; first="ostnatec0.BMP"

item_light = addModel("item_light", 16, 10,
[[
X....
XXXXX
]])
addItemAnim(item_light, "images/dump/pohr.png")

item_light = addModel("item_light", 17, 14,
[[
X
]])
addItemAnim(item_light, "images/dump/tenisak.png")

item_light = addModel("item_light", 16, 17,
[[
X
X
]])
addItemAnim(item_light, "images/dump/lahev.png")

item_light = addModel("item_light", 9, 3,
[[
XXX
]])
addItemAnim(item_light, "images/dump/savle.png")

uhor = addModel("item_light", 7, 17,
[[
XXX
X..
X..
]])
addItemAnim(uhor, "images/dump/uhor_00.png")
-- extsize=1; first="Uhor0.BMP"

item_light = addModel("item_light", 10, 19,
[[
....X
XXXXX
...XX
]])
addItemAnim(item_light, "images/dump/sekyrka.png")

item_light = addModel("item_light", 9, 18,
[[
XX
]])
addItemAnim(item_light, "images/dump/musla.png")

budik = addModel("item_light", 7, 16,
[[
X
]])
addItemAnim(budik, "images/dump/budik_00.png")
-- extsize=1; first="budik0.BMP"

item_light = addModel("item_light", 5, 20,
[[
X
X
X
X
X
]])
addItemAnim(item_light, "images/dump/stozar_v_l.png")

item_light = addModel("item_light", 11, 26,
[[
XX
]])
addItemAnim(item_light, "images/dump/bota.png")

item_light = addModel("item_light", 12, 25,
[[
XXXXXX
....X.
....X.
]])
addItemAnim(item_light, "images/dump/zavora.png")

small = addModel("fish_small", 3, 19,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 3, 17,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")



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

