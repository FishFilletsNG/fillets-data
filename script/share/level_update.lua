-- -----------------------------------------------------------------
-- This script contains script_update() function,
-- which is called every game cycle from the game.
--
-- NOTE: this script contains code structures to support
-- original level design (e.g. afaze, X, Y, dir)
-- -----------------------------------------------------------------

file_include("script/share/blackjokes.lua")
file_include("script/share/bubles.lua")

-- -----------------------------------------------------------------
-- View update
-- -----------------------------------------------------------------
local function animateFish(model)
    if model:isAlive() then
        local action = model:getAction()

        if "move_up" == action then
            model:runAnim("vertical_up")
        elseif "move_down" == action then
            model:runAnim("vertical_down")
        elseif "move_left" == action or "move_right" == action then
            model:runAnim("swam")
        elseif "turn" == action then
            model:runAnim("turn")
        elseif "activate" == action then
            model:setAnim("turn", 0)
        elseif "busy" == action then
            model:setAnim("turn", 0)
        else
            --NOTE: for talking see animateHead() bellow
            model:runAnim("rest")
        end
    else
        model:runAnim("skeleton")
    end
end

-- -----------------------------------------------------------------
local function animateHead(model)
    if model:isAlive() then
        local state = model:getState()
        if "talking" == state then
            if not model.talk_phase then
                model.talk_phase = random(3)
            elseif math.mod(game_getCycles(), 2) == 0 then
                model.talk_phase = math.mod(
                    model.talk_phase + randint(1, 2), 3)
            end
        else
            model.talk_phase = false
        end

        local action = model:getAction()
        if "busy" == action then
            if model.talk_phase then
                model:setAnim("talk", model.talk_phase)
            else
                model:setAnim("turn", 0)
            end
        else
            if "talking" == state then
                model:useSpecialAnim("head_talking", model.talk_phase)
            elseif "pushing" == state then
                model:useSpecialAnim("head_pushing", 0)
            end
        end
    end
end

-- -----------------------------------------------------------------
local function animateUnits()
    for index, unit in pairs(getUnitTable()) do
        animateFish(unit)
        animateHead(unit)
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

-- -----------------------------------------------------------------
-- Init functions
-- -----------------------------------------------------------------
function initModels()
    -- Set starting values for all models
    -- Run this function in you init
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

    stdBlackJokeLoad()
    stdBublesLoad()
end

-- -----------------------------------------------------------------
function script_update()
    -- this function is called after every game cycle
    animateUnits()

    updateModels()
    prog_update()

    stdBubles()
    -- stdJoke()
    stdBlackJoke()
end
