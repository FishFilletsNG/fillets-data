
-- -----------------------------------------------------------------
-- NOTE: uses 'small' and 'big' fish names
local function playShout(unit)
    if level_isNewRound() and unit:getState() == "goout" then
        --NOTE: chewing gum bore joke
        if room.zvykacka and ((unit == small and big:isOut()) or (unit == big and small:isOut())) and not small:isTalking() then
            small:talk("ob-m-zvykacka")
        elseif unit == small then
            unit:talk("sp-shout_small_0"..random(5))
        elseif unit == big then
            if random(100) < 15 and small:isOut() then
                unit:talk("sp-shout_big_04")
            else
                unit:talk("sp-shout_big_0"..random(4))
            end
        end
        game_killPlan()
    end
end

-- -----------------------------------------------------------------
function borderShout()
    for index, unit in pairs(getUnitTable()) do
        playShout(unit)
    end
end

-- -----------------------------------------------------------------
function borderShoutLoad()
    --TODO: add 'en' sound
    dialog_addDialog("sp-shout_small_00", "en", "")
    dialog_addDialog("sp-shout_small_01", "en", "")
    dialog_addDialog("sp-shout_small_02", "en", "")
    dialog_addDialog("sp-shout_small_03", "en", "")
    dialog_addDialog("sp-shout_small_04", "en", "")

    dialog_addDialog("sp-shout_big_00", "en", "")
    dialog_addDialog("sp-shout_big_01", "en", "")
    dialog_addDialog("sp-shout_big_02", "en", "")
    dialog_addDialog("sp-shout_big_03", "en", "")
    dialog_addDialog("sp-shout_big_04", "en", "")


    dialog_addDialog("sp-shout_small_00", "cs", "sound/share/border/cs/sp-shout_small_00.ogg")
    dialog_addDialog("sp-shout_small_01", "cs", "sound/share/border/cs/sp-shout_small_01.ogg")
    dialog_addDialog("sp-shout_small_02", "cs", "sound/share/border/cs/sp-shout_small_02.ogg")
    dialog_addDialog("sp-shout_small_03", "cs", "sound/share/border/cs/sp-shout_small_03.ogg")
    dialog_addDialog("sp-shout_small_04", "cs", "sound/share/border/cs/sp-shout_small_04.ogg")

    dialog_addDialog("sp-shout_big_00", "cs", "sound/share/border/cs/sp-shout_big_00.ogg")
    dialog_addDialog("sp-shout_big_01", "cs", "sound/share/border/cs/sp-shout_big_01.ogg")
    dialog_addDialog("sp-shout_big_02", "cs", "sound/share/border/cs/sp-shout_big_02.ogg")
    dialog_addDialog("sp-shout_big_03", "cs", "sound/share/border/cs/sp-shout_big_03.ogg")
    dialog_addDialog("sp-shout_big_04", "cs", "sound/share/border/cs/sp-shout_big_04.ogg")
end

