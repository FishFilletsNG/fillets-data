
-- -----------------------------------------------------------------
-- setanim() and gonanim()
-- -----------------------------------------------------------------
-- Example: setanim(model, "a3d3a4a5a6a7d2a6a5a4a3")

function resetanim(model)
    model.anim_delay = 0
    model.anim_pos = 1
    model.anim_label = 1
end

function setanim(model, anim_string)
    resetanim(model)
    model.anim_string = anim_string
end

local function anim_getSymbol(model)
    return string.sub(model.anim_string, model.anim_pos, model.anim_pos)
end
local function anim_incPos(model)
    model.anim_pos = model.anim_pos + 1
end

local function anim_number(model)
    local symbol = anim_getSymbol(model)
    if symbol == "?" then
        anim_incPos(model)
        local int1 = anim_number(model)
        anim_incPos(model)
        local int2 = anim_number(model)
        return randint(int1, int2)
    end

    local istart, iend, str_number = string.find(model.anim_string,
            "(%-?%d+)", model.anim_pos)
    local number = 0
    if istart == nil then
        print("SCRIPT_WARNING empty number; anim_string="..model.anim_string)
    else
        model.anim_pos = iend + 1
        number = tonumber(str_number)
        if number == nil then
            error("SCRIPT_ERROR bad number; str_number="..str_number)
        end
    end
    return number
end

local function anim_next(model)
    -- Process next symbol, uppercase letters are not blocking.
    local symbol = "A"
    while string.lower(symbol) ~= symbol do
        symbol = anim_getSymbol(model)
        anim_incPos(model)
        switch(string.lower(symbol)){
            ["d"] = function()
                model.anim_delay = anim_number(model)
                if model.anim_delay < 0 then
                    model.anim_delay = 0
                    symbol = "D"
                end
            end,
            ["a"] = function()
                model.afaze = anim_number(model)
            end,
            ["s"] = function()
                local addr = anim_number(model)
                anim_incPos(model)
                local value = anim_number(model)
                --TODO: replace sN,M with s"name",M
                error("SCRIPT_ERROR anim_S is not implemented; addr="..addr.."; value="..value)
            end,
            ["l"] = function()
                model.anim_label = model.anim_pos
            end,
            ["g"] = function()
                model.anim_pos = model.anim_label
            end,
            ["r"] = function()
                model.anim_pos = 1
            end,
            default = function()
                error("SCRIPT_ERROR unknown anim symbol; symbol="..symbol.."; pos="..model.anim_pos)
            end,
        }
    end
end


function goanim(model)
    -- goanim process next anim command
    if model.anim_delay > 0 then
        model.anim_delay = model.anim_delay - 1
    elseif model.anim_pos > string.len(model.anim_string) then
        model.anim_string = ""
        model.anim_pos = 1
    else
        anim_next(model)
    end
end

