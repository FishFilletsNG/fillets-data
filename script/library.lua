file_include("script/level_funcs.lua")

createRoom(21, 37, "images/library/vrak-pozadi.png")

wall = addModel("item_fixed", 0, 0,
[[
........XXXXXXXXXXXXX
...........XXXXXXXXXX
...........XXXXXXXXXX
.....XX....X..XXXXXXX
...XXX........XXXXXXX
XXXXXX........XXXXXXX
XXXXX.........XXXXXXX
XXXXXXXXX.....XXXXXXX
XXXXXXXXXX....XXXXXXX
XXXXXXXXXX....XXXXXXX
XXXXXXXXX.....XXXXXXX
XXXXXXX.......XXXXXXX
XXXXXX........XXXXXXX
XXXXX.........XXXXXXX
XXXX.....X....XXXXXXX
XXXX.....X....XXXXXXX
X........X....XXX.XXX
X........X....XX...XX
X........X....X....XX
XXXX.....X......XXXXX
X........X........XXX
X........X........XXX
X........X........XXX
XXXX.....X.....XXXXXX
X........X........XXX
X........X........XXX
X........X........XXX
XXXX.....X......XXXXX
X........X........XXX
X........X........XXX
X........X........XXX
...............XXXXXX
..................XXX
X.X.......XXX.....XXX
XXX...............XXX
XXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXX
]])
addItemAnim(wall, "images/library/vrak-okoli.png")

big = addModel("fish_big", 4, 28,
[[
XXXX
XXXX
]])
addFishAnim(big, LOOK_RIGHT, "images/fishes/big")

small = addModel("fish_small", 5, 27,
[[
XXX
]])
addFishAnim(small, LOOK_RIGHT, "images/fishes/small")

sklibak = addModel("item_light", 8, 5,
[[
.XX
XX.
]])
addItemAnim(sklibak, "images/library/ostnatec_00.png")
-- extsize=2; first="ostnatec0.BMP"

trubka = addModel("item_heavy", 8, 11,
[[
XX
.X
XX
]])
addItemAnim(trubka, "images/library/4-ocel.png")

item_light = addModel("item_light", 1, 16,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-a.png")

item_light = addModel("item_light", 2, 16,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-b.png")

item_light = addModel("item_light", 2, 20,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-c.png")

item_light = addModel("item_light", 16, 20,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/mapa_v.png")

item_light = addModel("item_light", 3, 24,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-a.png")

item_light = addModel("item_light", 1, 25,
[[
X
X
]])
addItemAnim(item_light, "images/library/kniha-mala.png")

item_light = addModel("item_light", 16, 18,
[[
XXX
]])
addItemAnim(item_light, "images/library/kniha-lezi-b.png")

item_light = addModel("item_light", 3, 22,
[[
XXX
]])
addItemAnim(item_light, "images/library/kniha-lezi-a.png")

item_light = addModel("item_light", 16, 24,
[[
XX
XX
XX
]])
addItemAnim(item_light, "images/library/kniha-tlusta.png")

item_light = addModel("item_light", 17, 29,
[[
X
X
]])
addItemAnim(item_light, "images/library/kniha-mala-a.png")

item_light = addModel("item_light", 17, 33,
[[
X
X
]])
addItemAnim(item_light, "images/library/kniha-mala.png")

item_light = addModel("item_light", 15, 28,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-b.png")

item_light = addModel("item_light", 16, 28,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-a.png")

item_light = addModel("item_light", 16, 32,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-c.png")

item_light = addModel("item_light", 2, 30,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/mapa_v.png")

item_light = addModel("item_light", 15, 20,
[[
X
X
X
]])
addItemAnim(item_light, "images/library/kniha-a.png")



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

