local BOANN = exports["framework"]:GetCoreObject()

local NumberCharset = {}
local Charset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

-- code
RegisterNetEvent('pepe-carshowroom:server:buyShowroomVehicle')
AddEventHandler('pepe-carshowroom:server:buyShowroomVehicle', function(vehicle)
    local src           = source
    local pData         = BOANN.Functions.GetPlayer(src)
    local cid           = pData.PlayerData.citizenid
    local GarageData    = "Legion Parking"
    local VehicleMeta   = {Fuel = 100.0, Body = 1000.0, Engine = 1000.0}
    local balance       = pData.PlayerData.money["bank"]
    local vehiclePrice  = BOANN.Shared.Vehicles[vehicle]["price"]
    local plate         = GeneratePlate()

    if (balance - vehiclePrice) >= 0 then
        exports.oxmysql:execute("INSERT INTO `characters_vehicles` (`citizenid`, `vehicle`, `plate`, `garage`, `state`, `mods`, `metadata`) VALUES (@citizenid, @vehicle, @plate, @garage, @state, @mods, @metadata)", {
            ['@citizenid']  = cid,
            ['@vehicle']    = vehicle,
            ['@plate']      = plate,
            ['@garage']     = GarageData,
            ['@state']      = 'out',
            ['@mods']       = '{}',
            ['@metadata']   = json.encode(VehicleMeta),
        })

        --[[Sell   vehicles_sell --]]
        local dateNow = os.date('%Y-%m-%d %H:%M')
        exports.oxmysql:execute("INSERT INTO `vehicles_sell` (`citizenid`, `vehicle`, `plate`, `sellby`, `date`) VALUES (@citizenid, @vehicle, @plate, @sellby, @date)", {
            ['@citizenid']  = cid,
            ['@vehicle']    = vehicle,
            ['@plate']      = plate,
            ['@sellby']     = showroomConfig.version,
            ['@date']       = dateNow,
        })
        
        TriggerClientEvent("Framework:Notify", src, "Dank je! Je voertuig is afgeleverd.", "success", 5000)
        TriggerClientEvent('pepe-carshowroom:client:buyShowroomVehicle', src, vehicle, plate)
        pData.Functions.RemoveMoney('bank', vehiclePrice, "vehicle-bought-in-showroom")
    else
        TriggerClientEvent("Framework:Notify", src, "You don't have enough money on the bank. Your missing: € "..format_thousand(vehiclePrice - balance), "error", 5000)
    end
end)


BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catalogus:cars", function(source, cb)
    local CarsTable = {}
    exports.oxmysql:execute("SELECT * FROM `vehicle_categories` WHERE `version` = @dealer ", {
        ['@dealer']  = showroomConfig.version,
    },  function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.name,
                ['label'] = v.label,
                ['img']   = v.img,                
            }
            table.insert(CarsTable, TempTable)
        end
        cb(CarsTable)
    end)
end)


--[[ catogory --]]
BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:compacts", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'compacts' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:sedans", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'sedans' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:suvs", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'suvs' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,   
                ['assets']  = v.assets,             
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)


BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:coupes", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'coupes' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:muscle", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'muscle' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:sports", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'sports' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,   
                ['assets']  = v.assets,             
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)


BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:super", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'super' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:motorcycles", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'motorcycles' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price, 
                ['assets']  = v.assets,               
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:offroad", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'offroad' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:industrial", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'industrial' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    },  function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:utility", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'utility' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:vans", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'vans' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price, 
                ['assets']  = v.assets,               
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:cycles", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'cycles' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price,  
                ['assets']  = v.assets,              
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:commercial", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'commercial' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']  = v.vehiclename,
                ['label'] = v.vehicledisplayname,
                ['price']   = v.price, 
                ['assets']  = v.assets,               
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:tuning", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'tuning' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']    = v.vehiclename,
                ['label']   = v.vehicledisplayname,
                ['price']   = v.price,                
                ['assets']  = v.assets,                
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

BOANN.Functions.CreateCallback("pepe-carshowroom:server:get:catogory:classics", function(source, cb)
    local carsTable = {}
    exports.oxmysql:execute("SELECT * FROM `server-cars` WHERE `vehicleclass` = 'classics' AND `type` = @dealer", {
        ['@dealer']  = showroomConfig.version,
    }, function(result)
        for k, v in pairs(result) do
            local TempTable = {}
            TempTable = {
                ['name']    = v.vehiclename,
                ['label']   = v.vehicledisplayname,
                ['price']   = v.price,                
                ['assets']  = v.assets,                
            }
            table.insert(carsTable, TempTable)
        end
        cb(carsTable)
    end)
end)

--[[ catogory --]]

function format_thousand(v)
    local s = string.format("%d", math.floor(v))
    local pos = string.len(s) % 3
    if pos == 0 then pos = 3 end
    return string.sub(s, 1, pos)
            .. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
end

function GeneratePlate()
    local plate = tostring(GetRandomNumber(1)) .. GetRandomLetter(2) .. tostring(GetRandomNumber(3)) .. GetRandomLetter(2)
    exports.oxmysql:execute("SELECT plate FROM `characters_vehicles` WHERE `plate` = @plate", {
        ['@plate'] = plate,
    }, function(result)
        while (result[1] ~= nil) do
            plate = tostring(GetRandomNumber(1)) .. GetRandomLetter(2) .. tostring(GetRandomNumber(3)) .. GetRandomLetter(2)
        end
        return plate
    end)
    return plate:upper()
end

function GetRandomNumber(length)
    Citizen.Wait(1)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
    else
        return ''
    end
end

function GetRandomLetter(length)
    Citizen.Wait(1)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
    else
        return ''
    end
end
