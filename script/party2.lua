file_include("script/level_funcs.lua")

createRoom(52, 33, "images/party2/party1-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXX....XXXXXX...X.XXXXXXXXX
XXXXXXX.XXXX......XXXXXX..........XXX.......XXXXXXXX
XXXXXX..X..X........XX............XXX........XXXXXXX
XXXXXX.............................X...........XXXXX
XXXX.............................................XXX
XX...............................................XXX
XX................................................XX
XX................................................XX
XX.................................................X
X..................................................X
X..................................................X
X..................................................X
X..................................................X
....................................................
....................................................
XX................................................XX
XXXXXXXXXXXXXXXXXXXXXXX.......XXXXXXXXXXXXXXXXXXXXXX
X..................................................X
X..................................................X
X..................................................X
X...X...X.....X..X...X..X.......X...X....X....X....X
X...X...X..X..X..X.X.X..X...X...X...X....X....X....X
X..................................................X
...................................................X
..XXX...X.....X....X....X.......X....X............X.
...XX.XXXX.XXXXXX.XXXXXXXXXXXXXXXXXXXXXXXX.XXXXXXXX.
....XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.
.....XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX..
X..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX..
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/party2/party2-w.png")

item_light = addModel("item_light", 19, 15,
[[
........
.......X
]])
addItemAnim(item_light, "images/party2/kabina_okna.png")

ocel = addModel("item_heavy", 5, 25,
[[
XXXXXXXXXX
X...X.X..X
]])
addItemAnim(ocel, "images/party2/1-ocel.png")

item_light = addModel("item_light", 12, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_pr.png")

item_light = addModel("item_light", 10, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_lezici.png")

item_light = addModel("item_light", 13, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_rozb.png")

item_light = addModel("item_light", 11, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_pr.png")

item_light = addModel("item_light", 7, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 6, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_pr.png")

item_light = addModel("item_light", 9, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_pr_roz.png")

big = addModel("fish_big", 1, 25,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

item_heavy = addModel("item_heavy", 23, 12,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/party2/14-ocel.png")

item_heavy = addModel("item_heavy", 26, 12,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/party2/14-ocel.png")

item_heavy = addModel("item_heavy", 29, 12,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/party2/14-ocel.png")

item_light = addModel("item_light", 6, 22,
[[
XXXXXXXX
]])
addItemAnim(item_light, "images/party2/tacek_00.png")
-- extsize=2; first="tacek0.BMP"

small = addModel("fish_small", 1, 24,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

item_light = addModel("item_light", 8, 21,
[[
X
]])
addItemAnim(item_light, "images/party2/sklenicka_roz.png")

kuk = addModel("item_light", 22, 16,
[[
.X
]])
addItemAnim(kuk, "images/party2/kuk_00.png")
-- extsize=23; first="kuk0.bmp"

ruka = addModel("item_light", 22, 16,
[[
.X
]])
addItemAnim(ruka, "images/party2/ruka_00.png")
-- extsize=6; first="ruka0.bmp"

frkavec = addModel("item_light", 22, 16,
[[
.X
]])
addItemAnim(frkavec, "images/party2/frkavec_00.png")
-- extsize=6; first="frkavec0.bmp"

hnat = addModel("item_light", 22, 16,
[[
.X
]])
addItemAnim(hnat, "images/party2/hnat_00.png")
-- extsize=21; first="hnat0.bmp"

lahev = addModel("item_light", 22, 16,
[[
.X
]])
addItemAnim(lahev, "images/party2/lahev_00.png")
-- extsize=14; first="lahev0.bmp"

frk = addModel("item_light", 22, 16,
[[
.X
]])
addItemAnim(frk, "images/party2/frk_00.png")
-- extsize=1; first="frk0.bmp"

kabina = addModel("item_light", 19, 15,
[[
.XXXXXXXXXXXX.
..XX.XX.XX.XX.
XXXXXXXXXXXXXX
XXXXXXXXXXXXXX
....XXXXXXX...
]])
addItemAnim(kabina, "images/party2/kabina_.png")



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

