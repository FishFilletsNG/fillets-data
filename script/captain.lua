file_include("script/level_funcs.lua")

createRoom(41, 29, "images/captain/vladova-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXX.X.XXXXXXX.XXXXXXXXXXXXXXX
XXXXXXXXXXXXXXX.X.XXXXXXX.XXXXXXXXXXXXXXX
XXXXXXXXXXXXXXX.X.XXXXXXX.XXXXXXXXXXXXXXX
XXXXXXX.......X.X.XXXXXXX.XXXXXXXXXXXXXXX
XXXXXXX.......X.X.X....................XX
XXXXXXX.......X.X.X....................XX
XXXXXXX...........X........X....X......XX
XXXXXXX...........X........XXXXXX......XX
XXXXXXX................................XX
XXXXXXX.................................X
XXXXXXX........X.X.............XXXXXX...X
XXXXXXX........X.X...............XXXX...X
XXXXXXX........X.X......................X
XXXXXXX........X.X...............X......X
XXXXXXX........XXXX..............X......X
X...XXX........X.................X.....XX
X.X..............................X.....XX
X......................................XX
XXXXXX.X.XX...XXX.XX.X.................XX
XXXXXX...XXXXXXXXXXX.XXXXXXXX.......XXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXX....XX..XXXX
...........X................X........XXXX
.................................XX..XXXX
......................................XXX
XXXXX..XXXXX....XXXXXXXXX.XXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/captain/vladova-w.png")

item_light = addModel("item_light", 11, 11,
[[
XXX
]])
addItemAnim(item_light, "images/captain/mapa_v.png")

item_heavy = addModel("item_heavy", 12, 9,
[[
X
X
]])
addItemAnim(item_heavy, "images/captain/vladova-2-tmp.png")

small = addModel("fish_small", 12, 12,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 8, 12,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

item_light = addModel("item_light", 15, 5,
[[
X
X
X
X
]])
addItemAnim(item_light, "images/captain/stozar_m.png")

item_light = addModel("item_light", 15, 0,
[[
X
X
X
X
X
]])
addItemAnim(item_light, "images/captain/stozar_v_l.png")

item_light = addModel("item_light", 17, 0,
[[
X
X
X
X
X
]])
addItemAnim(item_light, "images/captain/stozar_v.png")

item_light = addModel("item_light", 17, 5,
[[
X
X
]])
addItemAnim(item_light, "images/captain/pohar.png")

diamant3 = addModel("item_light", 26, 23,
[[
X
]])
addItemAnim(diamant3, "images/captain/krystal_m_00.png")
-- extsize=3; first="krystal m 0.BMP"

item_heavy = addModel("item_heavy", 26, 21,
[[
XX
XX
]])
addItemAnim(item_heavy, "images/captain/vladova-10-tmp.png")

ocko = addModel("item_light", 35, 20,
[[
X
]])
addItemAnim(ocko, "images/captain/oko_00.png")
-- extsize=4; first="oko 0.bmp"

item_light = addModel("item_light", 30, 5,
[[
XXXX
]])
addItemAnim(item_light, "images/captain/rahno_m.png")

item_light = addModel("item_light", 22, 5,
[[
XXXXXXXX
]])
addItemAnim(item_light, "images/captain/rahno_v.png")

lebkic = addModel("item_light", 9, 16,
[[
XX
XX
]])
addItemAnim(lebkic, "images/captain/lebza_00.png")
-- extsize=3; first="lebza 0.BMP"

diamant1 = addModel("item_light", 8, 11,
[[
X
]])
addItemAnim(diamant1, "images/captain/krystal_f_00.png")
-- extsize=3; first="krystal f 0.BMP"

hakahak = addModel("item_light", 31, 11,
[[
XX
X.
X.
X.
X.
X.
]])
addItemAnim(hakahak, "images/captain/hak_00.png")
-- extsize=2; first="hak0.BMP"

item_light = addModel("item_light", 32, 12,
[[
XXX
..X
..X
..X
..X
.XX
]])
addItemAnim(item_light, "images/captain/stul.png")

item_heavy = addModel("item_heavy", 32, 19,
[[
XX
]])
addItemAnim(item_heavy, "images/captain/vladova-18-tmp.png")

item_light = addModel("item_light", 31, 17,
[[
....X
XXXXX
]])
addItemAnim(item_light, "images/captain/nuz.png")

item_light = addModel("item_light", 35, 12,
[[
XX.
XX.
X..
XXX
X.X
]])
addItemAnim(item_light, "images/captain/kreslo.png")

item_heavy = addModel("item_heavy", 25, 3,
[[
X
X
]])
addItemAnim(item_heavy, "images/captain/vladova-21-tmp.png")

diamantv = addModel("item_light", 32, 21,
[[
XX
]])
addItemAnim(diamantv, "images/captain/drahokam_00.png")
-- extsize=5; first="drahokam 0.BMP"

diamant2 = addModel("item_light", 19, 17,
[[
X
]])
addItemAnim(diamant2, "images/captain/krystal_c_00.png")
-- extsize=3; first="krystal c 0.BMP"

item_light = addModel("item_light", 34, 21,
[[
XX
]])
addItemAnim(item_light, "images/captain/mapa_m.png")



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

