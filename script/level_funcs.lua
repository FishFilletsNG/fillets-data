
function createRoom(width, height, picture)
    game_createRoom(width, height, picture)
end

function addModel(name, x, y, picture, shape)
    model_index = game_addModel(name, x, y, picture, shape)
    return createObject(model_index)
end

-- -----------------------------------------------------------------
function createObject(model_index)
    object = {}
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
    object.setSpecialAnim = function(self, anim_name, phase)
        model_setSpecialAnim(self.index, anim_name, phase)
    end

    object.X = function(self)
        x, y = model_getLoc(self.index)
        return x
    end
    object.Y = function(self)
        x, y = model_getLoc(self.index)
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
function animateFish(model)
    if model:isAlive() then
        action = model:getAction()

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
function addFishAnim(model, fish_name)
    model:addDuplexAnim("skeleton", "images/fishes/"..fish_name.."/left/"..fish_name.."_skeleton0.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_skeleton0.png")
    model:addDuplexAnim("rest", "images/fishes/"..fish_name.."/left/"..fish_name.."_rest0.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_rest0.png")
    model:addDuplexAnim("rest", "images/fishes/"..fish_name.."/left/"..fish_name.."_rest1.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_rest1.png")
    model:addDuplexAnim("rest", "images/fishes/"..fish_name.."/left/"..fish_name.."_rest2.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_rest2.png")

    model:addDuplexAnim("vertical_up", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical0.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical0.png")
    model:addDuplexAnim("vertical_up", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical1.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical1.png")
    model:addDuplexAnim("vertical_up", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical2.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical2.png")
    model:addDuplexAnim("vertical_up", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical3.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical3.png")
    model:addDuplexAnim("vertical_up", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical4.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical4.png")
    model:addDuplexAnim("vertical_up", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical5.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical5.png")

    model:addDuplexAnim("vertical_down", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical5.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical5.png")
    model:addDuplexAnim("vertical_down", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical4.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical4.png")
    model:addDuplexAnim("vertical_down", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical3.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical3.png")
    model:addDuplexAnim("vertical_down", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical2.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical2.png")
    model:addDuplexAnim("vertical_down", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical1.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical1.png")
    model:addDuplexAnim("vertical_down", "images/fishes/"..fish_name.."/left/"..fish_name.."_vertical0.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_vertical0.png")

    model:addDuplexAnim("swam", "images/fishes/"..fish_name.."/left/"..fish_name.."_swam0.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_swam0.png")
    model:addDuplexAnim("swam", "images/fishes/"..fish_name.."/left/"..fish_name.."_swam1.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_swam1.png")
    model:addDuplexAnim("swam", "images/fishes/"..fish_name.."/left/"..fish_name.."_swam2.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_swam2.png")
    model:addDuplexAnim("swam", "images/fishes/"..fish_name.."/left/"..fish_name.."_swam3.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_swam3.png")
    model:addDuplexAnim("swam", "images/fishes/"..fish_name.."/left/"..fish_name.."_swam4.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_swam4.png")
    model:addDuplexAnim("swam", "images/fishes/"..fish_name.."/left/"..fish_name.."_swam5.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_swam5.png")

    model:addDuplexAnim("turn", "images/fishes/"..fish_name.."/left/"..fish_name.."_turn0.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_turn0.png")
    model:addDuplexAnim("turn", "images/fishes/"..fish_name.."/left/"..fish_name.."_turn1.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_turn1.png")
    model:addDuplexAnim("turn", "images/fishes/"..fish_name.."/left/"..fish_name.."_turn2.png",
    "images/fishes/"..fish_name.."/right/"..fish_name.."_turn2.png")

    -- heads
    model:addDuplexAnim("head_talking", "images/fishes/"..fish_name.."/heads/left/"..fish_name.."_head_talking0.png", "images/fishes/"..fish_name.."/heads/right/"..fish_name.."_head_talking0.png")

    model:addDuplexAnim("head_talking", "images/fishes/"..fish_name.."/heads/left/"..fish_name.."_head_talking1.png", "images/fishes/"..fish_name.."/heads/right/"..fish_name.."_head_talking1.png")
    model:addDuplexAnim("head_talking", "images/fishes/"..fish_name.."/heads/left/"..fish_name.."_head_talking2.png", "images/fishes/"..fish_name.."/heads/right/"..fish_name.."_head_talking2.png")
end

