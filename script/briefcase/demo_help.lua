
local function isWater(x, y)
    -- index -1 is for empty space (water)
    return model_equals(-1, x, y)
end

local function charAt(s, i)
    return string.sub(s, i, i)
end
    
local function moveXY(model, symbols, destX, destY)
    local result = false
    local locX, locY = model:getLoc()
    local w = model:getW()
    local h = model:getH()

    print("TEST: move '"..symbols.."' "..locX..","..locY.." -> "..destX..","..destY)

    --TODO: find undirect path too
    if locX > destX and isWater(locX - w, locY) then
        game_action_move(charAt(symbols, 3))
    elseif locX < destX and isWater(locX + w, locY) then
        game_action_move(charAt(symbols, 4))
    elseif locY > destY and isWater(locX, locY - h) then
        game_action_move(charAt(symbols, 1))
    elseif locY < destY and isWater(locX, locY + h) then
        game_action_move(charAt(symbols, 2))
    else
        if locX ~= destX or locY ~= destY then
            error("moveXY - fish cannot move")
        end
        result = true
    end
    return result
end
local function bigMoveXY(x, y)
    return moveXY(big, 'UDLR', x, y)
end
local function smallMoveXY(x, y)
    return moveXY(small, 'udlr', x, y)
end
local function planDelay(delay)
    game_planAction(function(count)
        return count >= delay
    end)
end



-- ---------------------------------------------------------------
game_planAction(function(count)
    addm(0, "help1")
    return true
end)
game_planAction(function(count)
    return smallMoveXY(17, 25)
end)
game_planAction(function(count)
    return game_action_move('L')
end)
game_planAction(function(count)
    return game_action_move('L')
end)
game_planAction(function(count)
    return bigMoveXY(17, 23)
end)
game_planAction(function(count)
    addv(0, "help2")
    return true
end)
--TODO: save
--[[
game_planAction(function(count)
    game_action_load()
    return true;
end)
]]

game_planAction(function(count)
    return smallMoveXY(7, 17)
end)
game_planAction(function(count)
    addm(0, "help3")
    return true
end)
game_planAction(function(count)
    return game_action_move('r')
end)
game_planAction(function(count)
    addv(0, "help4")
    return true
end)
game_planAction(function(count)
    return game_action_move('L')
end)
game_planAction(function(count)
    return game_action_move('L')
end)
game_planAction(function(count)
    return game_action_move('L')
end)
game_planAction(function(count)
    return game_action_move('L')
end)
game_planAction(function(count)
    addm(0, "help5")
    return true
end)

