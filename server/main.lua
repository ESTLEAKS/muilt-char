local Characters = {}

RegisterNetEvent('ums:openCharacterUI')
AddEventHandler('ums:openCharacterUI', function()
    local src = source
    local license = GetPlayerLicense(src)
    local charList = GetCharactersForPlayer(license)
    TriggerClientEvent('ums:showCharacterUI', src, charList)
end)

RegisterNetEvent('ums:selectCharacter')
AddEventHandler('ums:selectCharacter', function(slot)
    local src = source
    local license = GetPlayerLicense(src)
    local character = GetCharacterBySlot(license, slot)

    if character then
        print(('Player %s selected character %s %s'):format(src, character.firstname, character.lastname))
        -- Spawn, apply skin, etc.
    else
        print(('Character not found for slot %d'):format(slot))
    end
end)
