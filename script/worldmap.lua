

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
                                children = {}
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
                                children = {
                                    --TODO: columns ...
                                }
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
                                children = {
                                    --TODO: viking1 ...
                                }
                            }}
                        }}
                    }}
                }}
            }}
        }}
    }}
}

worldway_parseWay(worldmap)

