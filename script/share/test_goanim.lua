-- script to test goanim() function

require("level_plan.lua")
require("prog_goanim.lua")

local function info(text, model)
    print(text.."  -----------------")
    table.foreach(model, print)
end

math.randomseed(os.time())

local model = {}

setanim(model, "a31d3a?40-50a?5-6d-14a8A1A2A3a4R")
info("setanim", model)
goanim(model);
info("a31", model)
goanim(model);
info("d3", model)
goanim(model);
goanim(model);
goanim(model);
goanim(model);
info("a?40-50", model)
goanim(model);
info("a?5-6", model)
goanim(model);
info("d-14a8", model)
goanim(model);
info("A1A2A3a4", model)
goanim(model);
info("R..a31", model)

setanim(model, "a4S12,56a6")
info("setanim", model)
goanim(model);
info("a4", model)
goanim(model);
info("S12,56a6", model)

