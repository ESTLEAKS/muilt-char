function FadeScreenIn()
    DoScreenFadeIn(1000)
end

function FadeScreenOut()
    DoScreenFadeOut(1000)
end

function TeleportToSelectionArea()
    local coords = vector3(-1044.85, -2749.89, 20.36)
    SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, true)
end
