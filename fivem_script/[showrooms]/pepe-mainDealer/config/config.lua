mainConfig              = {}
mainConfig.JobName      = "cardealer"
mainConfig.Locations    = {
    ['blibs']   = {
        --[[
        [1] =   {
            ["name"]        =   "Budget Cars",
            ["icone"]       =   326,
            ["cordinators"] =   {["x"] = -45.55, ["y"] = -1095.36, ["z"] = 27.27},
        },
        [2] =   {
            ["name"]        =   "Aquanomy",
            ["icone"]       =   410,
            ["cordinators"] =   {["x"] = -801.64, ["y"] = -1356.98, ["z"] = 5.18},
        },
        [3] =   {
            ["name"]        =   "Autonomy",
            ["icone"]       =   410,
            ["cordinators"] =   {["x"] = -801.64, ["y"] = -1356.98, ["z"] = 5.18},
        },
        [4] =   {
            ["name"]        =   "Airenomy",
            ["icone"]       =   410,
            ["cordinators"] =   {["x"] = -801.64, ["y"] = -1356.98, ["z"] = 5.18},
        },
        --]]
    },

    ['Stash']   = { 
        --automomy de luxe
        [1] = {   ['x'] = -779.7492, ['y'] = -233.6356, ['z'] = 37.07958, ['h'] = 176 },
        
        --automomy Primium
        [2] = {   ['x'] = -24.99, ['y'] = -1101.02, ['z'] = 27.27, ['h'] = 176 },   

        --aquanomy
        --[3] = {   ['x'] = -791.97, ['y'] = -1351.06, ['z'] = 5.18, ['h'] = 21.42 },       
    },

    ['Boss']    = { 
        --automomy de luxe
        [1] = { ['x'] = -809.4218, ['y'] = -207.7646, ['z'] = 37.07958},

        --automomy Primium
        [2] = { ['x'] = -24.27, ['y'] = -1104.01, ['z'] = 27.27},

        --aquanomy
        --[3] = {['x'] = -787.7, ['y'] = -1350.60, ['z'] = 5.18},
    },

    ['Duty']    = { 
        --automomy de luxe
        [1] = { ['x'] = -781.1369, ['y'] = -212.0666, ['z'] = 37.07958 }, 
        
        --automomy Primium
        [2] = { ['x'] = -30.85, ['y'] = -1097.58, ['z'] = 27.27 }, 

        --aquanomy
        --[3] = { ['x'] = -805.14, ['y'] = -1368.99, ['z'] = 5.18 },
    },

    ['deletevehicle'] = {
        --automomy Primium
        [1] =   {['x'] = -768.15, ['y'] = -233.1, ['z'] = 37.07}
    },

    ['shop']    =   {
        [1] =  {['x'] = -810.34, ['y'] = -205.04,   ['z'] = 37.13},
        [2] =  {['x'] = -791.18, ['y'] = -1344.25,  ['z'] = 9.04},
        --[3] =  {['x'] = -27.33,  ['y'] = -1109.87,  ['z'] = 27.27}
    }
}

mainConfig.Items = {
    label = "Kerkhof Autohandel",
    slots = 5,
    items = {
      [1] = {
        name = "cleankit",
        price = 0,
        amount = 5,
        info = {},
        type = "item",
        slot = 1,
      },
      
      [2] = {
        name = "repairkit",
        price = 200,
        amount = 50,
        info = {},
        type = "item",
        slot = 2,
      },
      
      [3] = {
        name = "jerrycan",
        price = 200,
        amount = 50,
        info = {},
        type = "item",
        slot = 3,
      },
    }
}

mainConfig.jetski       = {
    --[[ [1] =   {
        ["spawnName"]   =   "yamahafxho",
        ["cordinators"] =   {
            ["X"] = -799.00, 
            ["Y"] = -1345.51, 
            ["Z"] = 4.40,
            ["H"] = 149.36,            
        },
    },
    
   [2] =   {
        ["spawnName"]   =   "seadoogtr215",
        ["cordinators"] =   {
            ["X"] = -802.24, 
            ["Y"] = -1345.2, 
            ["Z"] = 4.45,
            ["H"] = 149.36,
        },
    },
 
    [3] =   {
        ["spawnName"]   =   "Seashark3",
        ["cordinators"] =   {
            ["X"] = -804.85, 
            ["Y"] = -1344.32, 
            ["Z"] = 4.45,
            ["H"] = 149.36,
        },
    }, ]]
}
