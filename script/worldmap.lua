

local worldmap = {
    -- Fish House
    codename = "start",
    datafile = "script/start/init.lua",
    x = 320, y = 121,
    hidden = false,
    children = {{
        codename = "briefcase",
        datafile = "script/briefcase/init.lua",
        x = 329, y = 153,
        hidden = false,
        children = {{
            codename = "cellar",
            datafile = "script/cellar/init.lua",
            x = 320, y = 189,
            hidden = false,
            children = {{
                codename = "library",
                datafile = "script/library/init.lua",
                x = 301, y = 224,
                hidden = false,
                children = {{
                    codename = "stairs",
                    datafile = "script/stairs/init.lua",
                    x = 285, y = 252,
                    hidden = false,
                    children = {{
                        codename = "broom",
                        datafile = "script/broom/init.lua",
                        x = 279, y = 286,
                        hidden = false,
                        children = {{
                            codename = "reef",
                            datafile = "script/reef/init.lua",
                            x = 292, y = 315,
                            hidden = false,
                            children = {{
                                codename = "wc",
                                datafile = "script/wc/init.lua",
                                x = 314, y = 338,
                                hidden = false,
                                children = {{
                                    -- wc ->
                                    -- Dump
                                    codename = "computer",
                                    datafile = "script/computer/init.lua",
                                    x = 289, y = 368,
                                    hidden = true,
                                    children = {{
                                        codename = "noground",
                                        datafile = "script/noground/init.lua",
                                        x = 257, y = 397,
                                        hidden = false,
                                        children = {{
                                            codename = "bathroom",
                                            datafile = "script/bathroom/init.lua",
                                            x = 217, y = 415,
                                            hidden = false,
                                            children = {{
                                                codename = "duckie",
                                                datafile = "script/duckie/init.lua",
                                                x = 170, y = 415,
                                                hidden = false,
                                                children = {{
                                                    codename = "puzzle",
                                                    datafile = "script/puzzle/init.lua",
                                                    x = 138, y = 385,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "dump",
                                                        datafile = "script/dump/init.lua",
                                                        x = 154, y = 342,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "barrel",
                                                            datafile = "script/barrel/init.lua",
                                                            x = 192, y = 351,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    },{
                                        -- computer ->
                                        -- Secret Computer
                                        codename = "tetris",
                                        datafile = "script/tetris/init.lua",
                                        x = 254, y = 349,
                                        hidden = true,
                                        children = {{
                                            codename = "emulator",
                                            datafile = "script/emulator/init.lua",
                                            x = 226, y = 317,
                                            hidden = false,
                                            children = {{
                                                codename = "warcraft",
                                                datafile = "script/warcraft/init.lua",
                                                x = 198, y = 290,
                                                hidden = false,
                                                children = {{
                                                    codename = "windoze",
                                                    datafile = "script/windoze/init.lua",
                                                    x = 162, y = 279,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "hardware",
                                                        datafile = "script/hardware/init.lua",
                                                        x = 129, y = 290,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "floppy",
                                                            datafile = "script/floppy/init.lua",
                                                            x = 97, y = 314,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    }}
                                }}

                            },{
                                -- reef ->
                                -- Coral reef
                                codename = "corals",
                                datafile = "script/corals/init.lua",
                                x = 329, y = 294,
                                hidden = true,
                                children = {{
                                    codename = "labyrinth",
                                    datafile = "script/labyrinth/init.lua",
                                    x = 367, y = 296,
                                    hidden = false,
                                    children = {{
                                        codename = "imprisoned",
                                        datafile = "script/imprisoned/init.lua",
                                        x = 401, y = 314,
                                        hidden = false,
                                        children = {{
                                            codename = "society",
                                            datafile = "script/society/init.lua",
                                            x = 418, y = 346,
                                            hidden = false,
                                            children = {{
                                                codename = "creatures",
                                                datafile = "script/creatures/init.lua",
                                                x = 412, y = 383,
                                                hidden = false,
                                                children = {{
                                                    codename = "cancan",
                                                    datafile = "script/cancan/init.lua",
                                                    x = 386, y = 406,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "pearls",
                                                        datafile = "script/pearls/init.lua",
                                                        x = 352, y = 408,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "turtle",
                                                            datafile = "script/turtle/init.lua",
                                                            x = 337, y = 375,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    },{
                                        -- labyrinth ->
                                        -- Treasure Cave
                                        codename = "aztec",
                                        datafile = "script/aztec/init.lua",
                                        x = 407, y = 282,
                                        hidden = true,
                                        children = {{
                                            codename = "gems",
                                            datafile = "script/gems/init.lua",
                                            x = 441, y = 291,
                                            hidden = false,
                                            children = {{
                                                codename = "chest",
                                                datafile = "script/chest/init.lua",
                                                x = 469, y = 319,
                                                hidden = false,
                                                children = {{
                                                    codename = "alibaba",
                                                    datafile = "script/alibaba/init.lua",
                                                    x = 494, y = 341,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "cave",
                                                        datafile = "script/cave/init.lua",
                                                        x = 529, y = 334,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "grail",
                                                            datafile = "script/grail/init.lua",
                                                            x = 558, y = 318,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    }}
                                }}
                            }}
                        }}
                    },{
                        -- stairs ->
                        -- City in the Deep
                        codename = "elevator1",
                        datafile = "script/elevator1/init.lua",
                        x = 247, y = 234,
                        hidden = true,
                        children = {{
                            codename = "city",
                            datafile = "script/city/init.lua",
                            x = 219, y = 217,
                            hidden = false,
                            children = {{
                                codename = "ufo",
                                datafile = "script/ufo/init.lua",
                                x = 192, y = 192,
                                hidden = false,
                                children = {{
                                    codename = "columns",
                                    datafile = "script/columns/init.lua",
                                    x = 171, y = 161,
                                    hidden = false,
                                    children = {{
                                        codename = "pavement",
                                        datafile = "script/pavement/init.lua",
                                        x = 161, y = 125,
                                        hidden = false,
                                        children = {{
                                            codename = "pyramid",
                                            datafile = "script/pyramid/init.lua",
                                            x = 175, y = 81,
                                            hidden = false,
                                            children = {{
                                                codename = "music",
                                                datafile = "script/music/init.lua",
                                                x = 207, y = 52,
                                                hidden = false,
                                                children = {{
                                                    codename = "crabshow",
                                                    datafile = "script/crabshow/init.lua",
                                                    x = 244, y = 44,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "elevator2",
                                                        datafile = "script/elevator2/init.lua",
                                                        x = 266, y = 77,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "atlantis",
                                                            datafile = "script/atlantis/init.lua",
                                                            x = 251, y = 115,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    }}
                                },{
                                    -- ufo ->
                                    -- UFO
                                    codename = "reactor",
                                    datafile = "script/reactor/init.lua",
                                    x = 167, y = 222,
                                    hidden = true,
                                    children = {{
                                        codename = "magnet",
                                        datafile = "script/magnet/init.lua",
                                        x = 132, y = 238,
                                        hidden = false,
                                        children = {{
                                            codename = "engine",
                                            datafile = "script/engine/init.lua",
                                            x = 95, y = 236,
                                            hidden = false,
                                            children = {{
                                                codename = "steel",
                                                datafile = "script/steel/init.lua",
                                                x = 70, y = 210,
                                                hidden = false,
                                                children = {{
                                                    codename = "corridor",
                                                    datafile = "script/corridor/init.lua",
                                                    x = 78, y = 169,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "experiments",
                                                        datafile = "script/experiments/init.lua",
                                                        x = 111, y = 159,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "propulsion",
                                                            datafile = "script/propulsion/init.lua",
                                                            x = 118, y = 192,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    }}
                                }}
                            }}
                        }}
                    }}
                },{
                    -- library ->
                    -- Ship Wrecks
                    codename = "submarine",
                    datafile = "script/submarine/init.lua",
                    x = 340, y = 228,
                    hidden = true,
                    children = {{
                        codename = "party1",
                        datafile = "script/party1/init.lua",
                        x = 381, y = 224,
                        hidden = false,
                        children = {{
                            codename = "elk",
                            datafile = "script/elk/init.lua",
                            x = 422, y = 210,
                            hidden = false,
                            children = {{
                                codename = "wreck",
                                datafile = "script/wreck/init.lua",
                                x = 456, y = 189,
                                hidden = false,
                                children = {{
                                    codename = "viking1",
                                    datafile = "script/viking1/init.lua",
                                    x = 483, y = 158,
                                    hidden = false,
                                    children = {{
                                        codename = "airplane",
                                        datafile = "script/airplane/init.lua",
                                        x = 491, y = 119,
                                        hidden = false,
                                        children = {{
                                            codename = "bathyscaph",
                                            datafile = "script/bathyscaph/init.lua",
                                            x = 477, y = 84,
                                            hidden = false,
                                            children = {{
                                                codename = "tank",
                                                datafile = "script/tank/init.lua",
                                                x = 446, y = 58,
                                                hidden = false,
                                                children = {{
                                                    codename = "viking2",
                                                    datafile = "script/viking2/init.lua",
                                                    x = 402, y = 61,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "party2",
                                                        datafile = "script/party2/init.lua",
                                                        x = 372, y = 88,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "gods",
                                                            datafile = "script/gods/init.lua",
                                                            x = 391, y = 124,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    }}
                                },{
                                    -- wreck ->
                                    -- Silver's Ship
                                    codename = "cabin1",
                                    datafile = "script/cabin1/init.lua",
                                    x = 464, y = 227,
                                    hidden = true,
                                    children = {{
                                        codename = "snowman",
                                        datafile = "script/snowman/init.lua",
                                        x = 487, y = 256,
                                        hidden = false,
                                        children = {{
                                            codename = "cannons",
                                            datafile = "script/cannons/init.lua",
                                            x = 521, y = 271,
                                            hidden = false,
                                            children = {{
                                                codename = "kitchen",
                                                datafile = "script/kitchen/init.lua",
                                                x = 558, y = 254,
                                                hidden = false,
                                                children = {{
                                                    codename = "cabin2",
                                                    datafile = "script/cabin2/init.lua",
                                                    x = 571, y = 210,
                                                    hidden = false,
                                                    children = {{
                                                        codename = "captain",
                                                        datafile = "script/captain/init.lua",
                                                        x = 550, y = 175,
                                                        hidden = false,
                                                        children = {{
                                                            codename = "map",
                                                            datafile = "script/map/init.lua",
                                                            x = 510, y = 199,
                                                            hidden = false,
                                                            children = {}
                                                        }}
                                                    }}
                                                }}
                                            }}
                                        }}
                                    }}
                                }}
                            }}
                        }}
                    }}
                }}
            }}
        }}
    }}
}

worldway_parseWay(worldmap)

