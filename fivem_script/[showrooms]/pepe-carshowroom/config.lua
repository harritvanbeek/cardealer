--[[
    Premium Auto Delux Configration
    useing MLO : https://fivem.gabzv.com/package/4724710
--]]


showroomConfig              = {}
showroomConfig.GtaVehicles  = {}
showroomConfig.version      = "gta5cardealer"   -- this need the same as the dealer in the database
showroomConfig.sellplate    = "autonomy"        -- set you onw custom plate
showroomConfig.Locations    = {
    --orginal position
    ["catalogus"] = {        
        [1]  = { 
            ['x'] = -40.53, 
            ['y'] = -1094.59, 
            ['z'] = 27.27 
        }
    }
}

showroomConfig.DefaultBuySpawn  = {
     --orginal position 
        x = -23.6,       
        y = -1094.35,  
        z = 26.95,
        h = 339.89
}

showroomConfig.ShowroomVehicles = {
    [1] = {
        --orginal position
            coords          = {
                x = -37.00, 
                y = -1093.50, 
                z = 26.28, 
                h = 22.63
            }, 

        defaultVehicle  = "neon",
        chosenVehicle   = "neon",
        inUse           = false,
    }
}
