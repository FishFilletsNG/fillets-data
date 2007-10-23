#!/usr/bin/env lua

if arg.n ~= 1 then
    print(string.format("Usage: %s path/to/dialogs.lua",
        arg[0]))
    print('Checks dialogs.lua for translation consistency.')
    print('Run it at DATADIR.')
    return
end
local inputFile = arg[1]
codename = string.gsub(inputFile, ".*/([^/]*)/[^/]*", "%1")

--NOTE: some mock objects
function file_include(filename)
    dofile(filename)
end
function file_exists(filename)
  local file = io.open(filename, "rb")
  if file then
      file:close()
  end
  return file ~= nil
end
function dialog_addDialog() end
function dialog_addFont() end
function demo_display() end
function game_planAction() end
function options_getParam() end
-----------

dofile("script/share/level_dialog.lua")
dofile(inputFile)

