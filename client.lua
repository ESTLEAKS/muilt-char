RegisterNetEvent('ums:openCharacterUI')
AddEventHandler('ums:openCharacterUI', function(characters)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openUI",
        characters = characters
    })
end)

RegisterNUICallback('selectCharacter', function(data, cb)
    TriggerServerEvent('ums:loadCharacter', data.slot)
    SetNuiFocus(false, false)
    cb({})
end)
