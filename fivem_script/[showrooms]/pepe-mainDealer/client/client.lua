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


BOANN               = exports["framework"]:GetCoreObject()
local isLoggedIn    = false
local onDuty        = false

RegisterNetEvent('Framework:Client:OnPlayerLoaded')
AddEventHandler('Framework:Client:OnPlayerLoaded', function()
    Citizen.SetTimeout(1250, function()
        TriggerEvent("Framework:GetObject", function(obj) BOANN = obj end)    
         Citizen.Wait(250)
          BOANN.Functions.GetPlayerData(function(PlayerData)
            PlayerJob, onDuty = PlayerData.job, PlayerData.job.onduty 
            isLoggedIn = true 
             onDuty = PlayerData.job.onduty
         end)
    end) 
end)

RegisterNetEvent('Framework:Client:SetDuty')
AddEventHandler('Framework:Client:SetDuty', function(Onduty)
    onDuty = Onduty
end)

RegisterNetEvent('Framework:Client:OnJobUpdate')
AddEventHandler('Framework:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(4)
            local Nearby        = false
            local PlayerCoords  = GetEntityCoords(GetPlayerPed(-1))
            
        --Duty
        for k, v in pairs(mainConfig.Locations["Duty"]) do
            local Distance = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, v.x, v.y, v.z, true)
            if Distance < 3 then
                DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.2, 210, 50, 9, 255, false, false, false, true, false, false, false)
                if Distance < 1.5 then
                    Nearby = true
                    if onDuty then 
                        DrawText3Ds(v.x, v.y, v.z, "In Dienst")                            
                        if IsControlJustReleased(0, Keys["E"]) then
                           TriggerServerEvent("Framework:ToggleDuty", false) 
                        end
                    else
                        DrawText3Ds(v.x, v.y, v.z, "Uit Dienst")  
                        if IsControlJustReleased(0, Keys['E']) then
                            TriggerServerEvent("Framework:ToggleDuty", true)
                        end
                    end                                    
                end
            end
        end 

        if onDuty then            
            --Stash
            for k, v in pairs(mainConfig.Locations["Stash"]) do
                local Distance = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, v.x, v.y, v.z, true)
                if Distance < 1.5 then
                    Nearby = true
                    if IsControlJustReleased(0, Keys["E"]) then
                        local maxweight = 4000000 * k
                        local slots     = 500     * k   
                        TriggerEvent("pepe-inventory:client:SetCurrentStash", "Kerkhof Autohandel")         
                        TriggerServerEvent("pepe-inventory:server:OpenInventory", "stash", "Kerkhof Autohandel", {maxweight = maxweight, slots = slots,})                                   
                    end
                end
            end

            --Shop
            for k, v in pairs(mainConfig.Locations["shop"]) do
                local Distance = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, v.x, v.y, v.z, true)
                if Distance < 1.5 then
                    Nearby = true
                    if IsControlJustReleased(0, Keys["E"]) then
                        print("oke")
                        TriggerServerEvent("pepe-inventory:server:OpenInventory", "shop", "Kerkhof Autohandel", mainConfig.Items)                  
                    end
                end
            end


            --Boss
            for k, v in pairs(mainConfig.Locations["Boss"]) do
                local Distance = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, v.x, v.y, v.z, true)
                if Distance < 1.5 then
                    Nearby = true
                    if IsControlJustReleased(0, Keys["E"]) then
                        TriggerServerEvent("pepe-bossmenu:server:openMenu")                    
                    end
                end
            end

            --deletevehicle
            for k, v in pairs(mainConfig.Locations["deletevehicle"]) do
                local Distance  = GetDistanceBetweenCoords(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, v.x, v.y, v.z, true)
                local ped       = PlayerPedId()
                if IsPedInAnyVehicle(ped, false) then
                    if Distance < 2.5 then
                        Nearby = true

                        local veh = GetVehiclePedIsIn(ped)
                        
                        DrawText3Ds(v.x, v.y, v.z, '~g~E~w~ - Hand in vehicle')
                        if IsControlJustPressed(0, Keys["E"]) then
                            BOANN.Functions.DeleteVehicle(veh)
                        end
                    end
                end
            end
            
        end          
    end
end)

Citizen.CreateThread(function()
        Citizen.Wait(1000)
        for k, v in pairs(mainConfig.jetski) do
            if v['spawnName'] ~= nil then
                    local model = GetHashKey(v['spawnName'])
                    
                    RequestModel(model)
                    while not HasModelLoaded(model) do
                        Citizen.Wait(250)
                    end

                    local veh   = CreateVehicle(model, v["cordinators"]["X"], v["cordinators"]["Y"], v["cordinators"]["Z"], false, false)
                    SetModelAsNoLongerNeeded(veh)
                    SetVehicleOnGroundProperly(veh)
                    SetEntityInvincible(veh, true)
                    SetVehicleEngineOn(veh, false)
                    
                    SetEntityHeading(veh, v["cordinators"]['H'])
                    SetVehicleDoorsLocked(veh, 3)
                    FreezeEntityPosition(veh, true)                     
            end
        end 
end)


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
