

local worldmap = {
    codename = "start",
    datafile = "script/start/init.lua",
    x = 300, y = 100,
    hidden = false,
    children = {{
        codename = "briefcase",
        datafile = "script/briefcase/init.lua",
        x = 300, y = 150,
        hidden = false,
        children = {{
            codename = "cellar",
            datafile = "script/cellar/init.lua",
            x = 300, y = 200,
            hidden = false,
            children = {{
                codename = "library",
                datafile = "script/library/init.lua",
                x = 280, y = 240,
                hidden = false,
                children = {}
            }}
        },{
            codename = "tank",
            datafile = "script/tank/init.lua",
            x = 200, y = 200,
            hidden = true,
            children = {{
                codename = "ufo",
                datafile = "script/ufo/init.lua",
                x = 180, y = 240,
                hidden = false,
                children = {}
            }}
        }}
    }}
}

worldway_parseWay(worldmap)

