file_include("script/level_funcs.lua")

createRoom(52, 33, "images/party1/party1-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXX.X...XXXXXX....XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXX.......XXX..........XXXXXX......XXXX.XXXXXXX
XXXXXXX........XXX............XX........X..X..XXXXXX
XXXXX...........X.............................XXXXXX
XXX.............................................XXXX
XXX...............................................XX
XX................................................XX
XX................................................XX
X.................................................XX
X..................................................X
X..................................................X
X..................................................X
X..................................................X
....................................................
....................................................
XX................................................XX
XXXXXXXXXXXXXXXXXXXXXX.......XXXXXXXXXXXXXXXXXXXXXXX
X..................................................X
X..................................................X
X..................................................X
X....X....X....X...X...X...X...X..X..X..X...X..X...X
X....X....X....X...X...X...X...X..X..X..X...X..X...X
X..................................................X
X...................................................
.X........X....X...X.......X....X....X......X..XXX..
.XXXXXXXXXXXX.XXXXXXXXXXXXXXXXXXXX.XXXXXX.XXXX.XX...
.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX....
..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.....
..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX..X
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/party1/party1-w.png")

item_light = addModel("item_light", 19, 15,
[[
.......
......X
]])
addItemAnim(item_light, "images/party1/kabina_okna_o.png")

ocel = addModel("item_heavy", 37, 25,
[[
XXXXXXXXXX
X..X.X...X
]])
addItemAnim(ocel, "images/party1/1-ocel.png")

big = addModel("fish_big", 47, 25,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

small = addModel("fish_small", 48, 24,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

frkavec = addModel("item_light", 21, 16,
[[
X
]])
addItemAnim(frkavec, "images/party1/frkavec_00.png")
-- extsize=6; first="frkavec0.bmp"

dama = addModel("item_light", 21, 16,
[[
..X
]])
addItemAnim(dama, "images/party1/dama_00.png")
-- extsize=15; first="dama0.bmp"

kapitan = addModel("item_light", 21, 16,
[[
..
.X
]])
addItemAnim(kapitan, "images/party1/kap_00.png")
-- extsize=18; first="kap0.bmp"

lodnik = addModel("item_light", 21, 16,
[[
....
...X
]])
addItemAnim(lodnik, "images/party1/lodnik_00.png")
-- extsize=22; first="lodnik0.bmp"

kabina = addModel("item_light", 19, 15,
[[
.XXXXXXXXXXXX.
.X.X.X.X.X.X..
X.X.X.X.X.X.XX
XXXXXXXXXXXXXX
...XXXXXXX....
]])
addItemAnim(kabina, "images/party1/kabina_o.png")

sklenka = addModel("item_light", 38, 21,
[[
X
]])
addItemAnim(sklenka, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 39, 21,
[[
X
]])
addItemAnim(item_light, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 40, 21,
[[
X
]])
addItemAnim(item_light, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 41, 21,
[[
X
]])
addItemAnim(item_light, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 42, 21,
[[
X
]])
addItemAnim(item_light, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 43, 21,
[[
X
]])
addItemAnim(item_light, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 44, 21,
[[
X
]])
addItemAnim(item_light, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 45, 21,
[[
X
]])
addItemAnim(item_light, "images/party1/sklenicka_00.png")
-- extsize=2; first="sklenicka0.BMP"

item_light = addModel("item_light", 38, 22,
[[
XXXXXXXX
]])
addItemAnim(item_light, "images/party1/tacek_00.png")
-- extsize=2; first="tacek0.BMP"



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

