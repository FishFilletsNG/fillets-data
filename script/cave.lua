file_include("script/level_funcs.lua")

createRoom(32, 28, "images/cave/jeskyne-p.png")

wall = addModel("item_fixed", 0, 0,
[[
..XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
.....XXXXXXXXXXXXXXXXXXXXXXXXXXX
X......XXXXXXXXXXX.XXXXXXXXXXXXX
XX........XXXXXXXX.XXXXXXXXXXXXX
XX..........XXXXXX.XXXXXXXXXXXXX
XX...................XXXXXXXXXXX
XX.....................XXXXXXXXX
XX......................XXXXXXXX
XX.................X.....XXXXXXX
XX.............X..........XXXXXX
XXX........................XXXXX
XXX........................XXXXX
XXX........................XXXXX
XXX........................XXXXX
XXX.......................XXXXXX
XXX....XXX.................XXXXX
XXX........................XXXXX
XXXX.......................XXXXX
XXX..........................XXX
XX.........................XXXXX
XXX...........................XX
XXXXXX.........................X
XXXXXX.........................X
XXXXXXXX..................X.....
XXXXXXXXX.X...............X.....
XXXXXXXXX.X...............XX..XX
XXXXXXXXX.XXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/cave/jeskyne-w.png")

netopyr = addModel("item_light", 18, 19,
[[
X.
XX
X.
]])
addItemAnim(netopyr, "images/cave/netopejr_00.png")
-- extsize=3; first="netopejr1.BMP"

small = addModel("fish_small", 2, 1,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 2, 2,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

tycka = addModel("item_heavy", 10, 15,
[[
XXXXXXXXXXXXXXXXX
]])
addItemAnim(tycka, "images/cave/tyc_00.png")
-- extsize=1; first="tyc0.bmp"

das = addModel("item_light", 17, 7,
[[
XXXX
...X
]])
addItemAnim(das, "images/cave/das-_00.png")
-- extsize=8; first="das-1.BMP"

item_light = addModel("item_light", 18, 3,
[[
X
X
X
X
]])
addItemAnim(item_light, "images/cave/krapnik3.png")

item_light = addModel("item_light", 18, 24,
[[
X
X
]])
addItemAnim(item_light, "images/cave/amfora.png")

blbec = addModel("item_light", 11, 24,
[[
XXXX
.X..
]])
addItemAnim(blbec, "images/cave/zahavec_00.png")
-- extsize=8; first="Zahavec1.BMP"

rybka = addModel("item_light", 26, 18,
[[
XX
]])
addItemAnim(rybka, "images/cave/rybicka_h_00.png")
-- extsize=3; first="rybicka h1.BMP"

item_light = addModel("item_light", 12, 23,
[[
X
]])
addItemAnim(item_light, "images/cave/muslicka.png")

vaza = addModel("item_light", 18, 16,
[[
X
X
X
]])
addItemAnim(vaza, "images/cave/vazav_00.png")
-- extsize=1; first="vazav0.BMP"

item_light = addModel("item_light", 18, 22,
[[
X
X
]])
addItemAnim(item_light, "images/cave/vaza_cervena.png")



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

