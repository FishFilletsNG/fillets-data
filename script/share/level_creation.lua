
-- -----------------------------------------------------------------
LOOK_LEFT = 0
LOOK_RIGHT = 1

-- -----------------------------------------------------------------
-- Room creation
-- -----------------------------------------------------------------
function createRoom(width, height, picture)
    --TODO: wavy params
    level_createRoom(width, height, picture)
    sound_addSound("impact_light", "sound/share/sp-impact_light_00.ogg")
    sound_addSound("impact_light", "sound/share/sp-impact_light_01.ogg")
    sound_addSound("impact_heavy", "sound/share/sp-impact_heavy_00.ogg")
    sound_addSound("impact_heavy", "sound/share/sp-impact_heavy_01.ogg")

    sound_addSound("dead_small", "sound/share/sp-dead_small.ogg")
    sound_addSound("dead_big", "sound/share/sp-dead_big.ogg")
end

local models_table = {}
function addModel(name, x, y, picture, shape)
    local model_index = game_addModel(name, x, y, picture, shape)
    local model = createObject(model_index)
    models_table[model_index] = model
    return model
end
function getModelsTable()
    return models_table
end

local unit_table = {}
function getUnitTable()
    return unit_table
end

-- -----------------------------------------------------------------
-- Model creation
-- -----------------------------------------------------------------
function createObject(model_index)
    local object = {}
    object.index = model_index
    object.talk_phase = false

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
        local action = self:getAction()
        if action ~= "busy" and action ~= "turn" and action ~= "activate" then
            model_useSpecialAnim(self.index, anim_name, phase)
        end
    end
    object.setEffect = function(self, effect_name)
        model_setEffect(self.index, effect_name)
    end

    object.getLoc = function(self)
        return model_getLoc(self.index)
    end
    object.getAction = function(self)
        return model_getAction(self.index)
    end
    object.getState = function(self)
        return model_getState(self.index)
    end
    object.isAlive = function(self)
        return model_isAlive(self.index)
    end
    object.isOut = function(self)
        return model_isOut(self.index)
    end
    object.isLeft = function(self)
        return model_isLeft(self.index)
    end
    object.getW = function(self)
        return model_getW(self.index)
    end
    object.getH = function(self)
        return model_getH(self.index)
    end
    object.isTalking = function(self)
        return model_isTalking(self.index)
    end
    object.talk = function(self, dialog)
        return model_talk(self.index, dialog)
    end
    object.killSound = function(self)
        return model_killSound(self.index)
    end
    object.planDialog = function(self, delay, dialog, action)
        return planDialog(self.index, delay, dialog, action)
    end
    object.setGoal = function(self, goalname)
        return model_setGoal(self.index, goalname)
    end
    object.change_turnSide = function(self)
        return model_change_turnSide(self.index)
    end
    object.change_setLocation = function(self, x, y)
        return model_change_setLocation(self.index, x, y)
    end
    object.setBusy = function(self, value)
        local busy = 1
        if not value then
            busy = 0
        end
        return model_setBusy(self.index, busy)
    end

    return object
end

-- -----------------------------------------------------------------
-- Loading resources
-- -----------------------------------------------------------------
function addItemAnim(model, picture_00)
    -- store all "picture_*.png" sprites to object anim
    local anim_name = "default"
    model:addAnim(anim_name, picture_00)
    --TODO: support others than .png
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

function addHeadAnim(model, directory, anim, phase)
    model:addDuplexAnim(anim,
            directory.."/heads/left/head_"..phase..".png",
            directory.."/heads/right/head_"..phase..".png")
end

function addFishAnim(model, look_dir, directory)
    -- NOTE: remark fish in unit_table
    unit_table[model.index] = model
    if model:isLeft() and look_dir == LOOK_RIGHT then
        model:change_turnSide()
    end
    model:setGoal("goal_escape")

    model:addDuplexAnim("skeleton", directory.."/left/body_skeleton_00.png",
            directory.."/right/body_skeleton_00.png")

    model:addDuplexAnim("rest", directory.."/left/body_rest_00.png",
            directory.."/right/body_rest_00.png")
    model:addDuplexAnim("rest", directory.."/left/body_rest_01.png",
            directory.."/right/body_rest_01.png")
    model:addDuplexAnim("rest", directory.."/left/body_rest_02.png",
            directory.."/right/body_rest_02.png")

    model:addDuplexAnim("vertical_up", directory.."/left/body_vertical_00.png",
            directory.."/right/body_vertical_00.png")
    model:addDuplexAnim("vertical_up", directory.."/left/body_vertical_01.png",
            directory.."/right/body_vertical_01.png")
    model:addDuplexAnim("vertical_up", directory.."/left/body_vertical_02.png",
            directory.."/right/body_vertical_02.png")
    model:addDuplexAnim("vertical_up", directory.."/left/body_vertical_03.png",
            directory.."/right/body_vertical_03.png")
    model:addDuplexAnim("vertical_up", directory.."/left/body_vertical_04.png",
            directory.."/right/body_vertical_04.png")
    model:addDuplexAnim("vertical_up", directory.."/left/body_vertical_05.png",
            directory.."/right/body_vertical_05.png")

    model:addDuplexAnim("vertical_down", directory.."/left/body_vertical_05.png",
            directory.."/right/body_vertical_05.png")
    model:addDuplexAnim("vertical_down", directory.."/left/body_vertical_04.png",
            directory.."/right/body_vertical_04.png")
    model:addDuplexAnim("vertical_down", directory.."/left/body_vertical_03.png",
            directory.."/right/body_vertical_03.png")
    model:addDuplexAnim("vertical_down", directory.."/left/body_vertical_02.png",
            directory.."/right/body_vertical_02.png")
    model:addDuplexAnim("vertical_down", directory.."/left/body_vertical_01.png",
            directory.."/right/body_vertical_01.png")
    model:addDuplexAnim("vertical_down", directory.."/left/body_vertical_00.png",
            directory.."/right/body_vertical_00.png")

    model:addDuplexAnim("swam", directory.."/left/body_swam_00.png",
            directory.."/right/body_swam_00.png")
    model:addDuplexAnim("swam", directory.."/left/body_swam_01.png",
            directory.."/right/body_swam_01.png")
    model:addDuplexAnim("swam", directory.."/left/body_swam_02.png",
            directory.."/right/body_swam_02.png")
    model:addDuplexAnim("swam", directory.."/left/body_swam_03.png",
            directory.."/right/body_swam_03.png")
    model:addDuplexAnim("swam", directory.."/left/body_swam_04.png",
            directory.."/right/body_swam_04.png")
    model:addDuplexAnim("swam", directory.."/left/body_swam_05.png",
            directory.."/right/body_swam_05.png")

    model:addDuplexAnim("turn", directory.."/left/body_turn_00.png",
            directory.."/right/body_turn_00.png")
    model:addDuplexAnim("turn", directory.."/left/body_turn_01.png",
            directory.."/right/body_turn_01.png")
    model:addDuplexAnim("turn", directory.."/left/body_turn_02.png",
            directory.."/right/body_turn_02.png")

    model:addDuplexAnim("talk", directory.."/left/body_talk_00.png",
            directory.."/right/body_talk_00.png")
    model:addDuplexAnim("talk", directory.."/left/body_talk_01.png",
            directory.."/right/body_talk_01.png")
    model:addDuplexAnim("talk", directory.."/left/body_talk_02.png",
            directory.."/right/body_talk_02.png")

    -- heads
    addHeadAnim(model, directory, "head_talking", "talking_00")
    addHeadAnim(model, directory, "head_talking", "talking_01")
    addHeadAnim(model, directory, "head_talking", "talking_02")

    addHeadAnim(model, directory, "head_pushing", "pushing")

    addHeadAnim(model, directory, "head_all", "talking_00")
    addHeadAnim(model, directory, "head_all", "pushing")
    addHeadAnim(model, directory, "head_all", "blink")
    addHeadAnim(model, directory, "head_all", "shock")
    addHeadAnim(model, directory, "head_all", "smile")
    addHeadAnim(model, directory, "head_all", "talking_01")
    addHeadAnim(model, directory, "head_all", "talking_02")
    addHeadAnim(model, directory, "head_all", "scowl_00")
    addHeadAnim(model, directory, "head_all", "scowl_01")

    model:runAnim("rest")
end
