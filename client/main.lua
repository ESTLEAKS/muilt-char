RegisterNetEvent('ums:showCharacterUI')
AddEventHandler('ums:showCharacterUI', function(characters)
    TeleportToSelectionArea()
    FadeScreenOut()
    Wait(1000)
    CreateSelectionCamera()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openUI",
        characters = characters
    })
    FadeScreenIn()
end)
