RegisterNetEvent('ums:applySkin')
AddEventHandler('ums:applySkin', function(skinData)
    local model = GetHashKey(skinData.model or "mp_m_freemode_01")

    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(100)
    end

    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)

    local ped = PlayerPedId()
    SetPedComponentVariation(ped, 0, skinData.face or 0, 0, 2)
    SetPedComponentVariation(ped, 11, skinData.torso or 0, 0, 2)
    SetPedComponentVariation(ped, 8, skinData.undershirt or 0, 0, 2)
    SetPedComponentVariation(ped, 4, skinData.legs or 0, 0, 2)
    SetPedComponentVariation(ped, 6, skinData.shoes or 0, 0, 2)
end)
