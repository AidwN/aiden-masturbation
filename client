ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local cekiyor = false


function DrawText3D(x, y, z, text)
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

Citizen.CreateThread(function()
    while true do
        local wait = 1500

        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance2 = GetDistanceBetweenCoords(playercoords, Config.Konum.x, Config.Konum.y, Config.Konum.z, true)

        if distance2 < 10 then
            wait = 5
            DrawMarker(2, Config.Konum.x, Config.Konum.y, Config.Konum.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.2, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)
            if distance2 < 1 then
                DrawText3D(Config.Konum.x, Config.Konum.y, Config.Konum.z + 0.4, '~g~E~s~ - 31 Çek')
                if IsControlJustReleased(0, 38) then
                    cekmek()
                end
            end
        end
        Citizen.Wait(wait)
    end
end)


function cekmek()
    if not cekiyor then
        ESX.TriggerServerCallback('aiden-31:itemkontrol', function(data)
            cekiyor = true
            exports['mythic_progbar']:Progress({
                name = "31cek",
                duration = 20000,
                label = '31 Cekiyorsun...',
                useWhileDead = false,
                canCancel = false,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    animDict = "misscarsteal2peeing",
                    anim = "peeing_outro",
                    flags = 49,
                },
            }, function(cancelled)
                if not cancelled then
                    TriggerServerEvent('aiden-31:pecetever')
                    -- trigger ur resetstress event if u want
                    cekiyor = false
                    ESX.ShowNotification('Rahatlıyorsun!')
                else
                end
            end)
        end, "viagra", 1)
    end
end



