
function no_dialog()
    return dialog_empty()
end

function isReady(model)
    -- fish is ready to talk
    return model:isAlive() and not model:isOut()
end

function odd(number)
    return math.mod(number, 2) == 0
end

function getRestartCount()
    return game_getRestartCounter()
end

function createArray(size)
    local array = {}
    for i = 0, size - 1 do
        array[i] = 0
    end
    return array
end
-- -----------------------------------------------------------------
-- Compatibility functions
-- -----------------------------------------------------------------
dir_no = 0
dir_up = 1
dir_down = 2
dir_left = 3
dir_right = 4

-- -----------------------------------------------------------------
function addm(time, text, busy)
    small:planDialog(time, text, busy)
end
function addv(time, text, busy)
    big:planDialog(time, text, busy)
end
function adddel(time)
    -- hack, big fish is used to say nothing
    big:planDialog(time, "pause")
end

-- -----------------------------------------------------------------
function xdist(one, second)
    local result = 0
    local one_min = one.X
    local one_max = one.X + one:getW() - 1
    local second_min = second.X
    local second_max = second.X + second:getW() - 1
    if one_max < second_min then
        result = one_max - second_min
    elseif second_max < one_min then
        result = one_min - second_max
    else
        result = 0
    end
    return result
end
function ydist(one, second)
    local result = 0
    local one_min = one.Y
    local one_max = one.Y + one:getH() - 1
    local second_min = second.Y
    local second_max = second.Y + second:getH() - 1
    if one_max < second_min then
        result = one_max - second_min
    elseif second_max < one_min then
        result = one_min - second_max
    else
        result = 0
    end
    return result
end
function dist(one, second)
    local dx = math.abs(xdist(one, second))
    local dy = math.abs(ydist(one, second))
    return math.max(dx, dy)
end

function look_at(fish, object)
    local dx = xdist(fish, object)
    return (fish:isLeft() and dx < 0) or dx > 0
end
-- -----------------------------------------------------------------
-- Alternative for FArray
-- -----------------------------------------------------------------
function modelEquals(model_index, x, y)
    -- index -1 is for empty space (water)
    return model_equals(model_index, x, y)
end

-- -----------------------------------------------------------------
-- Init functions
-- -----------------------------------------------------------------
function initModels()
    -- Set starting values for all models
    -- Run this function at init
    local models = getModelsTable()
    for key, model in pairs(models) do
        model.afaze = 0
        model.X, model.Y = model:getLoc()
        model.XStart, model.YStart = model:getLoc()
        model.dir = dir_no
        model.updateAnim = function(self)
            self:setAnim("default", self.afaze)
        end
    end
end

-- -----------------------------------------------------------------
-- Run functions
-- -----------------------------------------------------------------
local function updateModels()
    -- update .X, .Y for all models
    local models = getModelsTable()
    for key, model in pairs(models) do
        model.X, model.Y = model:getLoc()

        local action = model:getAction()
        if "move_up" == action then
            model.dir = dir_up
        elseif "move_down" == action then
            model.dir = dir_down
        elseif "move_left" == action then
            model.dir = dir_left
        elseif "move_right" == action then
            model.dir = dir_right
        else
            model.dir = dir_no
        end
    end
end

function script_update()
    -- this function is called after every game cycle
    animateFish(small)
    animateFish(big)
    animateHead(small)
    animateHead(big)

    updateModels()
    prog_update()
end


