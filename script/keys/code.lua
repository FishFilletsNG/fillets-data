
-- -----------------------------------------------------------------
-- Init
-- -----------------------------------------------------------------
local function prog_init()
    initModels()
    sound_playMusic("music/rybky06.ogg")

    -- -------------------------------------------------------------
    local function prog_init_room()
        return function()
            for i = 0,3 do
                if (klic[i].Y <= 10 and klic[i].dir == dir_up) or (klic[i].afaze ~= 0 and klic[i].afaze ~= 3) then
                    klic[i].afaze = klic[i].afaze+1
                    if klic[i].afaze == 6 then klic[i].afaze = 0 end
                    klic[i]:updateAnim()
                end
            end
        end
    end

   -- --------------------
    local update_table = {}
    local subinit
    subinit = prog_init_room()
    if subinit then
        table.insert(update_table, subinit)
    end
    return update_table
end
local update_table = prog_init()


-- -----------------------------------------------------------------
-- Update
-- -----------------------------------------------------------------
function prog_update()
    for key, subupdate in pairs(update_table) do
        subupdate()
    end
end

