file_include("script/level_funcs.lua")

createRoom(47, 36, "images/emulator/zx-pozadi.png")

wall = addModel("item_fixed", 0, 0,
[[
XXX.......XXXXXXXXXXXXXXXXXXX.XXXXXXXXXXXXXXXXX
XXXXXX....XXXXXXXXXXXX.....XX.XXXXXXXXXX.....XX
XXXXXX....XXXXXXXXXXXX.....XX.XXXXXXXXXX.....XX
XXX.......XXXXXX..XX.......XX................XX
XXX.......XXXXXX..XX.........................XX
XXX....................................XX....XX
XXXXXX.................................XXXXXXXX
XXXXXXXXXXX...XX.......................XXXXXXXX
XXXXXXXXXXX..XXXXXXXXXXXX.XX...........XX...XXX
XXXX.........XXXXXXXXXXXX.XX...........XX...XXX
XXXX........XXX.......XX..XX.........XXXX...XXX
XXXX........XXX.......XX..XX.........XXXX...XXX
XXXX..................XX..XX.........XXXX...XXX
XXXX..................XX..XX..................X
XXXX..................XX..XX.........XX.......X
XXXX..................XX..XX..................X
XXXX..................XX..XX.........XX......XX
XXXX..................XX..XX.........XX......XX
XXXX........X.........XX..XX.........XX......XX
XXXX.......XXX........XX..XX.................XX
XXXX........X.........XX..XX.........XX......XX
XXXX..X...............XX..XX.........XX.XX..XXX
XXXX.XXX..............XX...X.........XX.XX..XXX
XXXX..X...............XX...X................XXX
XXXX..................XX...X................XXX
XXXX..................XX...X................XXX
XXXX..................XX...X................XXX
XXXX..................XX...X................XXX
XXXX........................................XXX
XXXX........................................XXX
XXXX........................................XXX
X...........................................XXX
XX..........XX..............................XXX
XXX.........XXXXXXXXXXXXX...................XXX
X.XX........................XXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/emulator/zx-tmp.png")

item_light = addModel("item_light", 12, 15,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/emulator/hwhero.png")

item_light = addModel("item_light", 4, 19,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/emulator/hwlife.png")

item_light = addModel("item_light", 6, 27,
[[
XXXXXXXXXXXXX
XXXXXXXXXXXXX
XXXXXXXXXXXXX
XXXXXXXXXXXXX
XXXXXXXXXXXXX
]])
addItemAnim(item_light, "images/emulator/hwscore.png")

item_light = addModel("item_light", 14, 15,
[[
XX
XX
]])
addItemAnim(item_light, "images/emulator/hwtron.png")

item_light = addModel("item_light", 22, 3,
[[
XXXXX
XXXXX
XXXXX
XXXXX
XXXXX
]])
addItemAnim(item_light, "images/emulator/hwzone.png")

item_light = addModel("item_light", 39, 31,
[[
.X.
XXX
XXX
]])
addItemAnim(item_light, "images/emulator/jed.png")

item_light = addModel("item_light", 35, 8,
[[
XXX
XXX
]])
addItemAnim(item_light, "images/emulator/jpazur.png")

item_light = addModel("item_light", 34, 11,
[[
XXX
XXX
]])
addItemAnim(item_light, "images/emulator/jpfial.png")

jet = addModel("item_light", 31, 8,
[[
XX.
XXX
XX.
XX.
.X.
]])
addItemAnim(jet, "images/emulator/jphero.png")

item_light = addModel("item_light", 32, 13,
[[
XXXXXX
]])
addItemAnim(item_light, "images/emulator/jppodkl.png")

jet2 = addModel("item_light", 40, 12,
[[
.X.
XXX
XXX
]])
addItemAnim(jet2, "images/emulator/jprak2.png")

jet1 = addModel("item_light", 40, 17,
[[
XXX
XXX
XXX
]])
addItemAnim(jet1, "images/emulator/jprak3.png")

knightik = addModel("item_light", 42, 2,
[[
XXX
XXX
XXX
XXX
]])
addItemAnim(knightik, "images/emulator/knight_00.png")
-- extsize=6; first="knight0.BMP"

manic = addModel("item_light", 10, 5,
[[
X
X
]])
addItemAnim(manic, "images/emulator/mmhero.png")

item_light = addModel("item_light", 6, 18,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/emulator/hwlife.png")

item_light = addModel("item_light", 10, 16,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/emulator/hwlife.png")

item_light = addModel("item_light", 8, 17,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/emulator/hwlife.png")

trubys = addModel("item_light", 14, 5,
[[
XX
XX
]])
addItemAnim(trubys, "images/emulator/mmtrub_00.png")
-- extsize=3; first="mmtrub0.bmp"

big = addModel("fish_big", 14, 17,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

small = addModel("fish_small", 8, 20,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

jet3 = addModel("item_light", 40, 8,
[[
.X
.X
.X
]])
addItemAnim(jet3, "images/emulator/jprak1.png")

item_light = addModel("item_light", 0, 31,
[[
..
..
..
.X
]])
addItemAnim(item_light, "images/emulator/spectrum.png")



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

