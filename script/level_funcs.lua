
function random(limit)
    -- return number from [0, limit)
    return math.random(limit) - 1
end

function createRoom(width, height, picture)
    -- TODO: wavy params
    game_createRoom(width, height, picture)
end

function addModel(name, x, y, picture, shape)
    local model_index = game_addModel(name, x, y, picture, shape)
    return createObject(model_index)
end

-- -----------------------------------------------------------------
function createObject(model_index)
    local object = {}
    object.index = model_index

    object.addAnim = function(self, anim_name, filename)
        model_addAnim(self.index, anim_name, filename)
    end
    object.addDuplexAnim = function(self, anim_name, left_file, right_file)
        model_addDuplexAnim(self.index, anim_name, left_file, right_file)
    end
    object.runAnim = function(self, anim_name, phase)
        model_runAnim(self.index, anim_name, phase)
    end
    object.setAnim = function(self, anim_name, phase)
        model_setAnim(self.index, anim_name, phase)
    end
    object.useSpecialAnim = function(self, anim_name, phase)
        model_useSpecialAnim(self.index, anim_name, phase)
    end

    object.X = function(self)
        local x, y = model_getLoc(self.index)
        return x
    end
    object.Y = function(self)
        local x, y = model_getLoc(self.index)
        return y
    end
    object.getAction = function(self)
        return model_getAction(self.index)
    end
    object.isAlive = function(self)
        return model_isAlive(self.index)
    end
    object.isTalking = function(self)
        return model_isTalking(self.index)
    end
    object.planDialog = function(self, dialog, delay)
        return model_planDialog(self.index, dialog, delay)
    end

    return object
end
-- -----------------------------------------------------------------
function addItemAnim(model, picture_00)
    local anim_name = "default"
    model:addAnim(anim_name, picture_00)
    -- TODO: support others than .png
    local index = 1
    local ext = ".png"
    local base, ok = string.gsub(picture_00, "_00"..ext.."$", "_")
    while ok == 1 do
        local next_file = base..index..ext
        if index < 10 then
            next_file = base.."0"..index..ext
        end

        if file_exists(next_file) then
            model:addAnim(anim_name, next_file)
        else
            ok = 0
        end
        index = index + 1
    end

    model:setAnim(anim_name, 0)
end

-- -----------------------------------------------------------------
function animateFish(model)
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
        else
            model:runAnim("rest")
        end
    else
        model:runAnim("skeleton")
    end
end

-- -----------------------------------------------------------------
function animateHead(model)
    if model:isAlive() then
        if "turn" ~= model:getAction() then
            if model:isTalking() then
                model:useSpecialAnim("head_talking", math.random(3) - 1)
            end
        end
    end
end

-- -----------------------------------------------------------------
function addd(time, text, who)
    print("TEST: addd("..time..", "..who..") "..text)
end
function addm(time, text)
    addd(time, text, "small")
end
function addv(time, text)
    addd(time, text, "big")
end

-- -----------------------------------------------------------------
function addFishAnim(model, look_dir, directory)
    model:addDuplexAnim("skeleton", directory.."/left/skeleton0.png",
            directory.."/right/skeleton0.png")

    model:addDuplexAnim("rest", directory.."/left/rest0.png",
            directory.."/right/rest0.png")
    model:addDuplexAnim("rest", directory.."/left/rest1.png",
            directory.."/right/rest1.png")
    model:addDuplexAnim("rest", directory.."/left/rest2.png",
            directory.."/right/rest2.png")

    model:addDuplexAnim("vertical_up", directory.."/left/vertical0.png",
            directory.."/right/vertical0.png")
    model:addDuplexAnim("vertical_up", directory.."/left/vertical1.png",
            directory.."/right/vertical1.png")
    model:addDuplexAnim("vertical_up", directory.."/left/vertical2.png",
            directory.."/right/vertical2.png")
    model:addDuplexAnim("vertical_up", directory.."/left/vertical3.png",
            directory.."/right/vertical3.png")
    model:addDuplexAnim("vertical_up", directory.."/left/vertical4.png",
            directory.."/right/vertical4.png")
    model:addDuplexAnim("vertical_up", directory.."/left/vertical5.png",
            directory.."/right/vertical5.png")

    model:addDuplexAnim("vertical_down", directory.."/left/vertical5.png",
            directory.."/right/vertical5.png")
    model:addDuplexAnim("vertical_down", directory.."/left/vertical4.png",
            directory.."/right/vertical4.png")
    model:addDuplexAnim("vertical_down", directory.."/left/vertical3.png",
            directory.."/right/vertical3.png")
    model:addDuplexAnim("vertical_down", directory.."/left/vertical2.png",
            directory.."/right/vertical2.png")
    model:addDuplexAnim("vertical_down", directory.."/left/vertical1.png",
            directory.."/right/vertical1.png")
    model:addDuplexAnim("vertical_down", directory.."/left/vertical0.png",
            directory.."/right/vertical0.png")

    model:addDuplexAnim("swam", directory.."/left/swam0.png",
            directory.."/right/swam0.png")
    model:addDuplexAnim("swam", directory.."/left/swam1.png",
            directory.."/right/swam1.png")
    model:addDuplexAnim("swam", directory.."/left/swam2.png",
            directory.."/right/swam2.png")
    model:addDuplexAnim("swam", directory.."/left/swam3.png",
            directory.."/right/swam3.png")
    model:addDuplexAnim("swam", directory.."/left/swam4.png",
            directory.."/right/swam4.png")
    model:addDuplexAnim("swam", directory.."/left/swam5.png",
            directory.."/right/swam5.png")

    model:addDuplexAnim("turn", directory.."/left/turn0.png",
            directory.."/right/turn0.png")
    model:addDuplexAnim("turn", directory.."/left/turn1.png",
            directory.."/right/turn1.png")
    model:addDuplexAnim("turn", directory.."/left/turn2.png",
            directory.."/right/turn2.png")

    -- heads
    model:addDuplexAnim("head_talking",
            directory.."/heads/left/head_talking0.png",
            directory.."/heads/right/head_talking0.png")

    model:addDuplexAnim("head_talking",
            directory.."/heads/left/head_talking1.png",
            directory.."/heads/right/head_talking1.png")
    model:addDuplexAnim("head_talking",
            directory.."/heads/left/head_talking2.png",
            directory.."/heads/right/head_talking2.png")

    model:runAnim("rest")
end

