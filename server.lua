local playerCharacters = {}

RegisterServerEvent('ums:loadCharacter')
AddEventHandler('ums:loadCharacter', function(slot)
    local src = source
    if not playerCharacters[src] then
        playerCharacters[src] = {}
        for i = 1, Config.MaxCharacters do
            playerCharacters[src][i] = Config.DefaultTemplate
        end
    end

    local selectedChar = playerCharacters[src][slot]
    print(('Player %s selected character slot %d'):format(src, slot))
    -- Load character data here (e.g., spawn, apply skin, etc.)
end)
