
function no_dialog()
    -- FIXME: implement
    return not small:isTalking() and not big:isTalking()
end

function isReady(model)
    return model:isAlive() and not model:isTalking() and not model:isOut()
end

function odd(number)
    return math.mod(number, 2) == 0
end

function getRestartCount()
    -- FIXME: implement
    return random(4)
end

-- -----------------------------------------------------------------
-- Compatibility functions
-- -----------------------------------------------------------------
function random(limit)
    -- return number from [0, limit)
    return math.random(limit) - 1
end

-- -----------------------------------------------------------------
function addm(time, text)
    small:planDialog(time, text)
end
function addv(time, text)
    big:planDialog(time, text)
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
    end
end

-- -----------------------------------------------------------------
-- Run functions
-- -----------------------------------------------------------------
local function updateXY()
    -- update .X, .Y for all models
    local models = getModelsTable()
    for key, model in pairs(models) do
        model.X, model.Y = model:getLoc()
    end
end

function update()
    -- this function is called after every game cycle
    animateFish(small)
    animateFish(big)
    animateHead(small)
    animateHead(big)

    updateXY()
    prog_update()
end

