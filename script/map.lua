file_include("script/level_funcs.lua")

createRoom(48, 33, "images/map/mapa-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXX........XXXXXXXXXXXXX
................................................
................................................
................................................
................................................
.........................................XX..XX.
.....................................XX..XX..XX.
.....................................XX.........
.................................XX...........XX
.XX..XX..XX..XX..XX..XX..XX..XX..XX...........XX
.XX..XX..XX..XX..XX..XX..XX..XX........XXX....XX
...............................................X
...............................................X
X..............................................X
X....................................X.........X
X..............................................X
X..............................................X
X..............................................X
X.............................................XX
X.............................................XX
X.............................................XX
X.............................................XX
X............................................XXX
X............................................XXX
X...........................................XXXX
X...........................................XXXX
XX......XXXXXXXXXXXXXXXX...................XXXXX
XX......XXXXXXXXXXXXXXXX................XXXXXXXX
X......................................XXXXXXXXX
X....................................XXXXXXXXXXX
XX.XXXXX.X.XXXXXXXXXX.X.XXXXXXXXX.XXXXXXXXXXXXXX
XX.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.XXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/map/mapa-okoli.png")

item_light = addModel("item_light", 18, 19,
[[
XX.
.X.
.X.
.XX
.X.
.X.
.X.
]])
addItemAnim(item_light, "images/map/pistole.png")

mapous = addModel("item_light", 8, 5,
[[
XXXXXX.
XXXXXXX
XXXXXXX
XXXXXXX
]])
addItemAnim(mapous, "images/map/mapa-b.png")

item_heavy = addModel("item_heavy", 36, 12,
[[
XXX
X.X
X.X
X.X
]])
addItemAnim(item_heavy, "images/map/3-ocel.png")

item_light = addModel("item_light", 10, 23,
[[
XXX
.X.
.X.
]])
addItemAnim(item_light, "images/map/stolekm.png")

small = addModel("fish_small", 26, 22,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 3, 21,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

item_heavy = addModel("item_heavy", 13, 28,
[[
X
X
]])
addItemAnim(item_heavy, "images/map/19-ocel.png")

item_heavy = addModel("item_heavy", 18, 28,
[[
X
X
]])
addItemAnim(item_heavy, "images/map/19-ocel.png")

item_light = addModel("item_light", 38, 8,
[[
XXXXX
XXXXX
]])
addItemAnim(item_light, "images/map/klobouk.png")

voko1 = addModel("item_light", 4, 20,
[[
X
]])
addItemAnim(voko1, "images/map/oko_00.png")
-- extsize=4; first="oko 0.bmp"

item_light = addModel("item_light", 27, 21,
[[
X
]])
addItemAnim(item_light, "images/map/oko_00.png")
-- extsize=4; first="oko 0.bmp"

kr1 = addModel("item_light", 37, 13,
[[
X
]])
addItemAnim(kr1, "images/map/krystal_m_00.png")
-- extsize=3; first="krystal m 0.BMP"

kr2 = addModel("item_light", 42, 7,
[[
X
]])
addItemAnim(kr2, "images/map/krystal_c_00.png")
-- extsize=3; first="krystal c 0.BMP"

item_light = addModel("item_light", 42, 24,
[[
X
]])
addItemAnim(item_light, "images/map/kouled.png")

item_light = addModel("item_light", 42, 25,
[[
X
]])
addItemAnim(item_light, "images/map/koulec.png")

item_light = addModel("item_light", 42, 26,
[[
X
]])
addItemAnim(item_light, "images/map/kouleb.png")

sneci = addModel("item_light", 5, 29,
[[
X
]])
addItemAnim(sneci, "images/map/maly_snek_00.png")
-- extsize=3; first="maly snek1.BMP"

item_light = addModel("item_light", 14, 28,
[[
X
]])
addItemAnim(item_light, "images/map/malysnek_00.png")
-- extsize=3; first="malysnek0.BMP"

item_light = addModel("item_light", 15, 28,
[[
X
]])
addItemAnim(item_light, "images/map/malysnek_00.png")
-- extsize=3; first="malysnek0.BMP"

item_light = addModel("item_light", 16, 28,
[[
X
]])
addItemAnim(item_light, "images/map/maly_snek_00.png")
-- extsize=3; first="maly snek1.BMP"

item_light = addModel("item_light", 17, 28,
[[
X
]])
addItemAnim(item_light, "images/map/malysnek_00.png")
-- extsize=3; first="malysnek0.BMP"

item_light = addModel("item_light", 14, 29,
[[
X
]])
addItemAnim(item_light, "images/map/malysnek_00.png")
-- extsize=3; first="malysnek0.BMP"

item_light = addModel("item_light", 15, 29,
[[
X
]])
addItemAnim(item_light, "images/map/malysnek_00.png")
-- extsize=3; first="malysnek0.BMP"

item_light = addModel("item_light", 16, 29,
[[
X
]])
addItemAnim(item_light, "images/map/malysnek_00.png")
-- extsize=3; first="malysnek0.BMP"

item_light = addModel("item_light", 17, 29,
[[
X
]])
addItemAnim(item_light, "images/map/malysnek_00.png")
-- extsize=3; first="malysnek0.BMP"



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

