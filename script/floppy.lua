file_include("script/level_funcs.lua")

createRoom(51, 35, "images/floppy/disketa-p-opr.png")

wall = addModel("item_fixed", 0, 0,
[[
XX..........XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XX..........XX.........XX.........XX.........XX....
XX..........XX.........XX.........XX.........XX....
XX..........XX.........XX.........XX.........XX..XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...................................XX.....XX...XX
XX......................XXX..........XXXX.XXXX...XX
XX...................................XXXX.XXXX...XX
XX...................................XXXX.XXXX...XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XX...............................................XX
XXXXXXXXXXXXXXXXXXXXX.XXXXXXXXXXXXXXXXX..........XX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/floppy/disketa-okoli.png")

disketa = addModel("item_light", 4, 22,
[[
XXXXXXXXXX
X........X
X........X
X........X
X........X
X........X
X........X
X........X
X........X
XXXXXXXXXX
]])
addItemAnim(disketa, "images/floppy/1-tmp.png")

ocelkriz = addModel("item_heavy", 20, 28,
[[
.X.
XXX
.X.
.X.
]])
addItemAnim(ocelkriz, "images/floppy/2-ocel.png")

item_heavy = addModel("item_heavy", 24, 8,
[[
X......
X......
X......
XXX....
..X....
..X....
..XXX..
....X..
....X..
....XXX
]])
addItemAnim(item_heavy, "images/floppy/3-ocel.png")

item_light = addModel("item_light", 7, 18,
[[
..X
XXX
X..
]])
addItemAnim(item_light, "images/floppy/klika.png")

vir1 = addModel("item_light", 24, 6,
[[
X
]])
addItemAnim(vir1, "images/floppy/vir-_00.png")
-- extsize=8; first="vir-1.BMP"

item_light = addModel("item_light", 21, 25,
[[
X
X
X
]])
addItemAnim(item_light, "images/floppy/souc.png")

item_light = addModel("item_light", 30, 10,
[[
XX
XX
XX
XX
XX
XX
]])
addItemAnim(item_light, "images/floppy/chip-1.png")

small = addModel("fish_small", 20, 21,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

big = addModel("fish_big", 17, 18,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

svab = addModel("item_light", 39, 12,
[[
XXXXX
X...X
]])
addItemAnim(svab, "images/floppy/svab_00.png")
-- extsize=3; first="svab0.BMP"

item_heavy = addModel("item_heavy", 40, 7,
[[
..X
..X
X.X
XXX
..X
]])
addItemAnim(item_heavy, "images/floppy/11-ocel.png")

vir2 = addModel("item_light", 28, 12,
[[
X
]])
addItemAnim(vir2, "images/floppy/virus-_00.png")
-- extsize=8; first="virus-1.BMP"

item_heavy = addModel("item_heavy", 26, 9,
[[
X
]])
addItemAnim(item_heavy, "images/floppy/13-ocel.png")

item_heavy = addModel("item_heavy", 34, 28,
[[
XXX
..X
XXX
]])
addItemAnim(item_heavy, "images/floppy/14-ocel.png")



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

