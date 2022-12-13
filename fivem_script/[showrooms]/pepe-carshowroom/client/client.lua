Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

BOANN                   = exports["framework"]:GetCoreObject()
local GtaCars           = {}
local ClosestVehicle    = 1
local inMenu            = false
local modelLoaded       = true
local fakecar           = {model = '', car = nil}


Citizen.CreateThread(function()
    Citizen.Wait(1000)
    for i = 1, #showroomConfig.ShowroomVehicles, 1 do                
        local oldVehicle = GetClosestVehicle(showroomConfig.ShowroomVehicles[i].coords.x, showroomConfig.ShowroomVehicles[i].coords.y, showroomConfig.ShowroomVehicles[i].coords.z, 3.0, 0, 70)
        if oldVehicle ~= 0 then
            BOANN.Functions.DeleteVehicle(oldVehicle)
        end

        local model = GetHashKey(showroomConfig.ShowroomVehicles[i].chosenVehicle)
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(0)
        end

        local veh = CreateVehicle(model, showroomConfig.ShowroomVehicles[i].coords.x, showroomConfig.ShowroomVehicles[i].coords.y, showroomConfig.ShowroomVehicles[i].coords.z, false, false)
        SetModelAsNoLongerNeeded(model)
        SetVehicleOnGroundProperly(veh)
        SetEntityInvincible(veh,true)
        SetEntityHeading(veh, showroomConfig.ShowroomVehicles[i].coords.h)
        SetVehicleDoorsLocked(veh, 3)

        --set color
        SetVehicleColours(veh, 131)
        SetVehicleCustomPrimaryColour(veh, 131)
        SetVehicleCustomSecondaryColour(veh, 131)

        FreezeEntityPosition(veh,true)
        SetVehicleNumberPlateText(veh, showroomConfig.sellplate)
    end

    while true do
            Citizen.Wait(4)
            local Nearby        = false
            local PlayerCoords  = GetEntityCoords(GetPlayerPed(-1))

        --Catalogus
        for k, v in pairs(showroomConfig.Locations["catalogus"]) do
            local Distance = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, v.x, v.y, v.z, true)
            if Distance < 3 then
                DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.2, 210, 50, 9, 255, false, false, false, true, false, false, false)
                if Distance < 1.5 then
                    Nearby = true
                    DrawText3Ds(v.x, v.y, v.z, "Press ~g~E~w~ For Catalogus") 
                    if IsControlJustReleased(0, Keys["E"]) then
                        TriggerEvent('pepe-carshowroom:client:open:catalogus')                
                    end
                end
            end
        end 

    end
end)

RegisterNetEvent('pepe-carshowroom:client:setShowroomCarInUse')
AddEventHandler('pepe-carshowroom:client:setShowroomCarInUse', function(showroomVehicle, inUse)
    showroomConfig.ShowroomVehicles[showroomVehicle].inUse = inUse
end)

RegisterNetEvent('pepe-carshowroom:client:setShowroomVehicle')
AddEventHandler('pepe-carshowroom:client:setShowroomVehicle', function(showroomVehicle, k)
    if showroomConfig.ShowroomVehicles[k].chosenVehicle ~= showroomVehicle then
        BOANN.Functions.DeleteVehicle(GetClosestVehicle(showroomConfig.ShowroomVehicles[k].coords.x, showroomConfig.ShowroomVehicles[k].coords.y, showroomConfig.ShowroomVehicles[k].coords.z, 3.0, 0, 70))
        modelLoaded = false
        Wait(250)
        local model = GetHashKey(showroomVehicle)
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(250)
        end
        local veh = CreateVehicle(model, showroomConfig.ShowroomVehicles[k].coords.x, showroomConfig.ShowroomVehicles[k].coords.y, showroomConfig.ShowroomVehicles[k].coords.z, false, false)
        SetModelAsNoLongerNeeded(model)
        SetVehicleOnGroundProperly(veh)
        SetEntityInvincible(veh,true)
        SetEntityHeading(veh, showroomConfig.ShowroomVehicles[k].coords.h)
        SetVehicleDoorsLocked(veh, 3)
        FreezeEntityPosition(veh, true)
        SetVehicleNumberPlateText(veh, showroomConfig.sellplate)
        modelLoaded = true
        showroomConfig.ShowroomVehicles[k].chosenVehicle = showroomVehicle
    end
end)

RegisterNetEvent('pepe-carshowroom:client:buyShowroomVehicle')
AddEventHandler('pepe-carshowroom:client:buyShowroomVehicle', function(vehicle, plate)
    BOANN.Functions.SpawnVehicle(vehicle, function(veh)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        SetVehicleNumberPlateText(veh, plate)
        SetEntityHeading(veh, showroomConfig.DefaultBuySpawn.h)
        SetEntityAsMissionEntity(veh, true, true)
        
        exports['pepe-essentials']:SetVehicleKey(GetVehicleNumberPlateText(veh), true)        
        exports['pepe-essentials']:SetFuelLevel(veh, GetVehicleNumberPlateText(veh), 100.0, false)
        
        
        --exports['pepe-vehiclekeys']:SetVehicleKey(GetVehicleNumberPlateText(veh), true)
        --SetEntityAsMissionEntity(veh, true, true)        
        --exports['pepe-fuel']:SetFuelLevel(veh, GetVehicleNumberPlateText(veh), 100.0, false)
    
    end, showroomConfig.DefaultBuySpawn, false)
end)



--[[Start Catalogus by Premium Autos --]]
    RegisterNetEvent('pepe-carshowroom:client:open:catalogus')
    AddEventHandler('pepe-carshowroom:client:open:catalogus', function()
                SetNuiFocus(true, true)
                SendNUIMessage({action = 'ui', ui = true}) 
    end)

    RegisterNUICallback('getVehicle', function(data, cb)
        local vehicle   = BOANN.Functions.GetClosestVehicle()
        local model     = GetEntityModel(vehicle)
        local modelname = GetDisplayNameFromVehicleModel(model):lower()
        local ThisCar   = BOANN.Shared.Vehicles[modelname]
        cb(ThisCar)
    end)

    RegisterNUICallback('getCatalogus', function(data, cb)
        BOANN.Functions.TriggerCallback('pepe-carshowroom:server:get:catalogus:cars', function(data)
            cb(data)
        end)
    end)

    RegisterNUICallback('getVehicles', function(data, cb)
        local catogory = data.setCatogory
        print('pepe-carshowroom:server:get:catogory:'..catogory)
        BOANN.Functions.TriggerCallback('pepe-carshowroom:server:get:catogory:'..catogory, function(cars)
            cb(cars)
        end)
    end)

    RegisterNUICallback('thisVehicle', function(data, cb)
        local vehicleName = data.vehicleName
        local ThisCar   = BOANN.Shared.Vehicles[vehicleName]
        cb(ThisCar)        
    end)

    RegisterNUICallback('spawnVehicle', function(data, cb)        
        if data.spawnVehicle then
            for i = 1, #showroomConfig.ShowroomVehicles, 1 do 
                local oldVehicle = GetClosestVehicle(showroomConfig.ShowroomVehicles[i].coords.x, showroomConfig.ShowroomVehicles[i].coords.y, showroomConfig.ShowroomVehicles[i].coords.z, 3.0, 0, 70)
                
                if oldVehicle ~= 0 then
                    BOANN.Functions.DeleteVehicle(oldVehicle)
                end

                local model = GetHashKey(data.spawnVehicle)

                RequestModel(model)
                while not HasModelLoaded(model) do
                    Citizen.Wait(0)
                end

                local veh = CreateVehicle(model, showroomConfig.ShowroomVehicles[i].coords.x, showroomConfig.ShowroomVehicles[i].coords.y, showroomConfig.ShowroomVehicles[i].coords.z, false, false)
                SetModelAsNoLongerNeeded(model)
                SetVehicleOnGroundProperly(veh)
                SetEntityInvincible(veh,true)
                SetEntityHeading(veh, showroomConfig.ShowroomVehicles[i].coords.h)
                SetVehicleDoorsLocked(veh, 3)

                SetVehicleColours(veh, 131)
                SetVehicleCustomPrimaryColour(veh, 131)
                SetVehicleCustomSecondaryColour(veh, 131)
                
                FreezeEntityPosition(veh,true)
                SetVehicleNumberPlateText(veh, showroomConfig.sellplate)

                table.insert(GtaCars, veh)
            end
        end
        
    end)

    RegisterNUICallback('buy-car', function(data, cb)
       TriggerServerEvent('pepe-carshowroom:server:buyShowroomVehicle', data.ThisCar) 
    end)

    RegisterNUICallback('exit', function()
        SetNuiFocus(false, false)
        SendNUIMessage({ action = "ui", ui = false})
    end)
--[[End gta catalogus --]]



function DrawText3Ds(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
