
local function planDelay(delay)
    if delay > 0 then
        game_planAction(function(count)
            --NOTE: count starts from 0
            return count >= delay - 1
        end)
    end
end

local picture_counter = 0
local function nextPicture()
    game_planAction(function(count)
        local number = picture_counter
        if picture_counter < 100 then
            number = "0"..number
            if picture_counter < 10 then
                number = "0"..number
            end
        end
        demo_display("images/demo_briefcase/demo_"..number..".png", 135, 25)
        picture_counter = picture_counter + 1
        return true
    end)
end

local actor_index = 1
local function talk(dialog_name)
    game_planAction(function(count)
        local busy = 0
        local delay = 0
        model_planDialog(actor_index, delay, dialog_name, busy)
        return true
    end)
end
local function waitForTalker(dialog_name)
    game_planAction(function(count)
        return not model_isTalking(actor_index)
    end)
end

local function planAnim(count)
    for i = 1, count do
        nextPicture()
    end
end


-- -----------------------------------------------------------------
-- start
game_planAction(function(count)
    sound_playMusic("music/kufrik.ogg")
    demo_display("images/demo_briefcase/kufr256.png", 0, 0)
    return true
end)

planDelay(7)
-- rotation logo
nextPicture()
planDelay(1)
nextPicture()
nextPicture()
nextPicture()
talk("kd-uvod")
planAnim(48)
planDelay(9)
nextPicture()
planDelay(2)
nextPicture()
planDelay(2)
nextPicture()
planDelay(2)
nextPicture()
planDelay(8)
waitForTalker()

talk("kd-ufo")
planDelay(7)
-- a bird
nextPicture()
planDelay(12)
nextPicture()
planDelay(12)
nextPicture()
planDelay(12)
nextPicture()
planDelay(12)
nextPicture()
planDelay(12)
nextPicture()
planDelay(13)
-- the map
nextPicture()
planDelay(23)
-- planets
planAnim(9) 
planDelay(3)
-- triangle
nextPicture()
nextPicture()
planDelay(2)
-- circle
nextPicture()
planDelay(1)
nextPicture()
planDelay(1)
-- hatch
nextPicture()
planDelay(1)
nextPicture()
planDelay(2)
-- conformity
planAnim(4)
-- E=mc2
nextPicture()
planDelay(3)
nextPicture()
planDelay(1)
nextPicture()
planDelay(1)
--TODO: sqrt, ...

