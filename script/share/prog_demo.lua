
function planDelay(delay)
    game_planAction(function(count)
        return count >= delay
    end)
end
function planStop()
    game_planAction(function(count)
        return false
    end)
end
function planTalk(dialogName)
    game_planAction(function(count)
        model_talk(1, dialogName)
        return true
    end)
end

dialog_addFont("font_poster", 255, 255, 255)
