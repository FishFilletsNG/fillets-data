createRoom(36, 27, "images/Pocitac/pocitac-pozadi.png")

addModel("item_fixed", 0, 0, "images/Pocitac/Pocitac-okoli.png",
[[
XXXXX   XXXXXX    XXXXXXXXXXXXXXXXXX
XXXXX   XXXXXXX   XXXXXXXXXXXXXXXXXX
XXXXXX   XXXXXX XXXXXX  XXXXXXXXXXXX
XXXXXXX      XX   XXX    XXXXXXXXXXX
XXXXXXX            X     XXXXXXXXXXX
XXXXXXX                   XXXXXXXXXX
XXXXXXXX                    XXXXXXXX
XXXXXXX                      XXXXXXX
XXXXX                         XXXXXX
XXXXXXXX                     XXXXXXX
XXXXXXXX                    XXXXXXXX
XXXXXXX            XX          XXXXX
XXXXX             XX            XXXX
XXXXXX                          XXXX
XXXXXXX                         XX  
XXXXXXX                             
XXXXXXXX                            
XXXXXX                            X 
XXXXXX                           XX 
XXXXXXX                          X  
XXXXXX                              
XXXX               XX               
XXXX                                
XXX                         XX  X XX
XXXX   X           XXXX  XXXXXXXXXXX
XXXXXXXXX         XXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXX    XXXXXXXXXXXXXXXXXXX
]])

addModel("item_light", 22, 11, "images/Pocitac/monitor.png",
[[
XXX       
XXXXXX    
XXXXXXXX  
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXXXX
XXXXXXXX  
  XXXX    
]])

addModel("item_light", 21, 19, "images/Pocitac/pocitac.png",
[[
XXXXXXXXXXX
XXXXXXXXXXX
XXXXXXXXXXX
XXXXXXXXXXX
]])

addModel("item_light", 10, 23, "images/Pocitac/klavesnice.png",
[[
XXXXXXXXX
XXXXXXXXX
]])

addModel("item_heavy", 22, 8, "images/Pocitac/4-Ocel.png",
[[
XXX
XXX
XXX
]])

addModel("item_light", 24, 6, "images/Pocitac/roura_st_a.png",
[[
X   
XXXX
]])

addModel("item_light", 9, 4, "images/Pocitac/vyvrtka.png",
[[
   X
XXXX
   X
]])

small = addModel("fish_small", 12, 7, "images/Pocitac/7-Mala.png",
[[
XXX
]])

big = addModel("fish_big", 8, 6, "images/Pocitac/8-Velka.png",
[[
XXXX
XXXX
]])

addModel("item_light", 7, 8, "images/Pocitac/cola.png",
[[
XX
]])

addModel("item_light", 5, 21, "images/Pocitac/kanystr.png",
[[
XXX
 XX
]])

addModel("item_light", 15, 0, "images/Pocitac/roura_st.png",
[[
XXX
X  
X  
]])

addModel("item_light", 7, 23, "images/Pocitac/cola.png",
[[
XX
]])



-- animations
model_addAnim(small, "skeleton", "images/fishes/small_skeleton.png")
model_addAnim(big, "skeleton", "images/fishes/big_skeleton.png")

-- ---------------------------------------------------------------
-- Update
-- ---------------------------------------------------------------
function update()
    -- print("script update")
    -- x, y =  model_getLoc(small)
    -- print(x .. ", " .. y)
end
