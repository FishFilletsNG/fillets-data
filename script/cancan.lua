file_include("script/level_funcs.lua")

createRoom(41, 35, "images/cancan/kankan-p.png")

wall = addModel("item_fixed", 0, 0,
[[
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXX......................XX
XXXXXXXXXXXXXXXXX......................XX
XXXXXXXXXXXXXXXXX....XXXXXXXXXXXXXX....XX
XXXXXXXXXXXXXXXXX....XXXXXXXX.XXXXX....XX
XXXXXXXXXX.XXXXX.....XXXX.....XXXXX....XX
XXXXXXXXXX.............................XX
X......................................XX
X......................................XX
X.....XX..X.....XXX.XX.XXXXXXXXXXX.....XX
X.......XX.............................XX
X......................................XX
XXXX..............X.XX.XX..............XX
XXXXXXXX.XXXXX....X.XX.XX..............XX
XX................X.XXXXXXXX......X....XX
XX.........................X......X....XX
XX....XX.XXXX................X....X....XX
XX....XXXXX.......X...............X....XX
XX.........................XXX.........XX
XX.....XXXXXXXXXXXXXXXX...X............XX
XX......................................X
XX.....XXXXX............................X
XX....XXXXXX.....XXXX..XXXX..XXXXXXXXXXXX
XX................XXX..XXXX...XXXXXXXXXXX
XX...XXX.........................XXXXXXXX
XX...XXX.........................XXXXXXXX
XX...XXXXXXXXXX..XX........X.....XXXXXXXX
........XXXXXX..XXXXXXXXXXXX.....XXXXXXXX
........XXXX......................XXXXXXX
.................................XXXXXXXX
X................................XXXXXXXX
XXXXXXXXXXXXXXXXXXXX..XXXXXX.XXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXX..XXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXX.XXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/cancan/kankan-w.png")

krab1 = addModel("item_light", 6, 12,
[[
XX
]])
addItemAnim(krab1, "images/cancan/krab_00.png")
-- extsize=9; first="krab1.BMP"

krab2 = addModel("item_light", 8, 12,
[[
XX
]])
addItemAnim(krab2, "images/cancan/krab_00.png")
-- extsize=9; first="krab1.BMP"

krab3 = addModel("item_light", 10, 12,
[[
XX
]])
addItemAnim(krab3, "images/cancan/krab_00.png")
-- extsize=9; first="krab1.BMP"

krab4 = addModel("item_light", 12, 12,
[[
XX
]])
addItemAnim(krab4, "images/cancan/krab_00.png")
-- extsize=9; first="krab1.BMP"

item_heavy = addModel("item_heavy", 19, 10,
[[
X....
X....
X....
X....
X....
XXXXX
X....
]])
addItemAnim(item_heavy, "images/cancan/tecko.png")

klavir = addModel("item_light", 20, 16,
[[
.XXX..
XXXXXX
.X....
]])
addItemAnim(klavir, "images/cancan/klavir_00.png")
-- extsize=9; first="klavir 1.BMP"

item_heavy = addModel("item_heavy", 18, 7,
[[
X
X
]])
addItemAnim(item_heavy, "images/cancan/kankan-7-tmp.png")

item_heavy = addModel("item_heavy", 17, 6,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/cancan/kankan-8-tmp.png")

item_heavy = addModel("item_heavy", 23, 10,
[[
......X
XXXXXXX
]])
addItemAnim(item_heavy, "images/cancan/kankan-9-tmp.png")

sepie = addModel("item_light", 27, 25,
[[
XXX
..X
..X
]])
addItemAnim(sepie, "images/cancan/sepie_00.png")
-- extsize=12; first="sepie 1.BMP"

item_light = addModel("item_light", 14, 26,
[[
.XX
.X.
XX.
]])
addItemAnim(item_light, "images/cancan/koral_s.png")

item_heavy = addModel("item_heavy", 17, 25,
[[
X
]])
addItemAnim(item_heavy, "images/cancan/kankan-12-tmp.png")

rejnok = addModel("item_light", 31, 21,
[[
XXXXXX
]])
addItemAnim(rejnok, "images/cancan/rejnok_00.png")
-- extsize=11; first="rejnok1.BMP"

item_light = addModel("item_light", 10, 7,
[[
X
]])
addItemAnim(item_light, "images/cancan/shell1.png")

item_light = addModel("item_light", 10, 8,
[[
X
]])
addItemAnim(item_light, "images/cancan/muslicka.png")

item_heavy = addModel("item_heavy", 10, 5,
[[
X
X
]])
addItemAnim(item_heavy, "images/cancan/kankan-16-tmp.png")

trubka = addModel("item_heavy", 24, 4,
[[
.....X
.XXX.X
XX.XXX
X.....
]])
addItemAnim(trubka, "images/cancan/kankan-17-tmp.png")

sasanka = addModel("item_light", 28, 7,
[[
.X
.X
]])
addItemAnim(sasanka, "images/cancan/sasanka_00.png")
-- extsize=7; first="sasanka1.BMP"

big = addModel("fish_big", 14, 15,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_LEFT, "images/fishes/big")

small = addModel("fish_small", 14, 14,
[[
XXX
]])
addFishAnim(small, LOOK_LEFT, "images/fishes/small")

item_heavy = addModel("item_heavy", 25, 28,
[[
X
X
X
]])
addItemAnim(item_heavy, "images/cancan/kankan-21-tmp.png")



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

