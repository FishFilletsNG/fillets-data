file_include("script/level_funcs.lua")

createRoom(28, 20, "images/wreck/potopena-pozadi.png")

wall = addModel("item_fixed", 0, 0,
[[
.......................XX...
.......................XX...
...............XXXXXXXXXXXXX
..X....................XX...
.XXX...................XX...
.XXX...................XX...
..XX...................XX...
..XXX..................XX...
..XXX..................XX...
...XX..................XX...
...XXXX................XX...
...XXXXXXXXX.X....XXXXXXXXXX
....XXXXXXXXXX......XXXXXXXX
....XXXXXXXXXX....XXXXX.....
....XXXXXXXXXX..............
.....XXXXXXXXX.............X
......XXXXXXXX....XXXXXXXXXX
XXXXXXXXXXXXXX....XXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/wreck/potopena-hotovo.png")

item_heavy = addModel("item_heavy", 3, 3,
[[
XXXXXXXXXXXXX
]])
addItemAnim(item_heavy, "images/wreck/potopena-1-tmp.png")

item_light = addModel("item_light", 16, 5,
[[
X.XX.X
XXXXXX
]])
addItemAnim(item_light, "images/wreck/klobrc.png")

item_heavy = addModel("item_heavy", 13, 9,
[[
XXX
X.X
]])
addItemAnim(item_heavy, "images/wreck/potopena-3-tmp.png")

item_light = addModel("item_light", 7, 7,
[[
XX
X.
]])
addItemAnim(item_light, "images/wreck/cepicka.png")

small = addModel("fish_small", 5, 9,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

big = addModel("fish_big", 17, 7,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

item_light = addModel("item_light", 16, 4,
[[
X
]])
addItemAnim(item_light, "images/wreck/muslicka.png")

meduza = addModel("item_light", 22, 8,
[[
X
X
X
]])
addItemAnim(meduza, "images/wreck/medusa_00.png")
-- extsize=2; first="medusa1.BMP"

item_light = addModel("item_light", 17, 12,
[[
XX
]])
addItemAnim(item_light, "images/wreck/rybicka_h_00.png")
-- extsize=3; first="rybicka h1.BMP"



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

