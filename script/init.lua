-- There is place to customize game before start

print("-- script init start --")
-- sendMsg(name.app, "hello from lua")
-- sendMsg(name.app, "inc_loglevel")
print("-- script init finish --")



-- -----------------------------------------------------------------
start = 0
--TEST: function test_nextLevel()
function xnextLevel()
    -- set param "level" to select level
    start = start + 1
    level = level_list[start]
    if level then
        setParam("level", level)
    end
end

level_list = {
[01] = "script/start.lua",
[02] = "script/briefcase.lua",
[03] = "script/cellar.lua",
[04] = "script/library/library.lua",
[05] = "script/stairs.lua",
[06] = "script/broom.lua",
[07] = "script/reef.lua",
[08] = "script/wc.lua",
[09] = "script/submarine.lua",
[10] = "script/party1.lua",
[11] = "script/elk.lua",
[12] = "script/wreck.lua",
[13] = "script/viking1.lua",
[14] = "script/airplane.lua",
[15] = "script/bathyscaph.lua",
[16] = "script/tank.lua",
[17] = "script/viking2.lua",
[18] = "script/party2.lua",
[19] = "script/gods.lua",
[20] = "script/elevator1.lua",
[21] = "script/city.lua",
[22] = "script/ufo.lua",
[23] = "script/columns.lua",
[24] = "script/pavement.lua",
[25] = "script/pyramid.lua",
[26] = "script/music.lua",
[27] = "script/crabshow.lua",
[28] = "script/elevator2.lua",
[29] = "script/atlantis.lua",
[30] = "script/corals.lua",
[31] = "script/labyrinth.lua",
[32] = "script/imprisoned.lua",
[33] = "script/society.lua",
[34] = "script/creatures.lua",
[35] = "script/cancan.lua",
[36] = "script/pearls.lua",
[37] = "script/turtle.lua",
[38] = "script/computer.lua",
[39] = "script/noground.lua",
[40] = "script/bathroom.lua",
[41] = "script/duckie.lua",
[42] = "script/puzzle.lua",
[43] = "script/dump.lua",
[44] = "script/barrel.lua",
[45] = "script/cabin1.lua",
[46] = "script/snowman.lua",
[47] = "script/cannons.lua",
[48] = "script/kitchen.lua",
[49] = "script/cabin2.lua",
[50] = "script/captain.lua",
[51] = "script/map.lua",
[52] = "script/reactor.lua",
[53] = "script/magnet.lua",
[54] = "script/engine.lua",
[55] = "script/steel.lua",
[56] = "script/corridor.lua",
[57] = "script/experiments.lua",
[58] = "script/propulsion.lua",
[59] = "script/aztec.lua",
[60] = "script/gems.lua",
[61] = "script/chest.lua",
[62] = "script/alibaba.lua",
[63] = "script/cave.lua",
[64] = "script/grail.lua",
[65] = "script/tetris.lua",
[66] = "script/emulator.lua",
[67] = "script/warcraft.lua",
[68] = "script/windoze.lua",
[69] = "script/hardware.lua",
[70] = "script/floppy.lua",
[71] = "script/ending.lua",
[72] = "script/score.lua",
}
