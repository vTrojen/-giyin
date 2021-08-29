function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(1)
    end
end

RegisterCommand("giyin",function()
    TriggerEvent('skinchanger:getSkin', function(skin) lastSkin = skin end)
    TriggerEvent('skinchanger:loadSkin', lastSkin)
    loadAnimDict("missmic4")
    TaskPlayAnim(PlayerPedId(), "missmic4", "michael_tux_fidget", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1500)
    ClearPedTasks(PlayerPedId())
end)