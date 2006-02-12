-- There is place to customize game before start

--NOTE: hack for win32, lang Czech = cs
--NOTE: first five characters from LC_CTYPE are stored in "lang" param
local lang = string.sub(getParam("lang") or "", 1, 5)
local winCodes = {
    Czech = "cs",
    Engli = "en",
    Frenc = "fr",
    Germa = "de",
    Itali = "it",
    Polis = "pl",
    Spani = "es",
    Dutch = "nl",
    Bulga = "bg",
}

if winCodes[lang] then
    setParam("lang", winCodes[lang])
end

--NOTE: default speech is 'cs' (there are cs/*.ogg files)
if getParam("speech") == nil then
    setParam("speech", "cs")
end

--- Prints global score.
-- Usable from debug console.
function score()
    local solvedCounter = 0
    local userSteps = 0
    local bestSteps = 0
    local oldImpl = node_bestSolution
    function node_bestSolution(codename, steps, solver)
        local solution = "solved/"..codename..".lua"
        if file_exists(solution) then
            solvedCounter = solvedCounter + 1
            bestSteps = bestSteps + steps
            file_include(solution)
            userSteps = userSteps + string.len(saved_moves)
        end
    end

    file_include("script/worldfame.lua")
    node_bestSolution = oldImpl
    print("Solved:", solvedCounter)
    print("Steps:", userSteps .."/".. bestSteps,
        "(loss: ".. 100 * (userSteps - bestSteps) / bestSteps .."%)")
end

