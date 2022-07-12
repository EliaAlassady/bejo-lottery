local QBCore = exports['qb-core']:GetCoreObject()

local blips = {
    {title= "<FONT FACE='space'>".."ﺐﻴﺼﻧﺎﻴﻟﺍ ﺮﺠﺘﻣ", colour=1, id=500, x = 462.39, y = -693.65, z = 27.43}
 }
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 3)
      SetBlipScale(info.blip, 0.8)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

RegisterNetEvent("bejo-lottery:client:GetCard")
AddEventHandler("bejo-lottery:client:GetCard", function()
    QBCore.Functions.Progressbar('lottery', 'جار التحدث مع الموظف...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = true,
        disableCombat = true,
    },{}, {}, {}, function()
        TriggerEvent('bejo-lottery:client:CardShopMenu')
    end)
end)

RegisterNetEvent('bejo-lottery:CardLottery', function()
    TriggerServerEvent('bejo-lottery:server:GetCard')
    TriggerEvent('bejo-lottery:client:CardShopMenu')
end)

RegisterNetEvent('bejo-lottery:CardLottery2', function()
    TriggerServerEvent('bejo-lottery:server:GetCard2')
    TriggerEvent('bejo-lottery:client:CardShopMenu')
end)

RegisterNetEvent('bejo-lottery:CardLottery3', function()
    TriggerServerEvent('bejo-lottery:server:GetCard3')
    TriggerEvent('bejo-lottery:client:CardShopMenu')
end)

RegisterNetEvent('bejo-lottery:client:CardShopMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = '🃏 متجر اليانصيب',
            isMenuHeader = true,
        },
        {
            header = 'يانصيب عادية',
            txt = 'السعر : <br> 2500$',
            params = {
                event = "bejo-lottery:CardLottery"
            }
        },
        {
            header = 'يانصيب متوسطة',
            txt = 'السعر : <br> 5000$',
            params = {
                event = "bejo-lottery:CardLottery2"
            }
        },
        {
            header = 'يانصيب ممتازة',
            txt = 'السعر : <br> 10000$',
            params = {
                event = "bejo-lottery:CardLottery3"
            }
        },
    })
end)

RegisterNetEvent('bejo-lottery:client:OpenCard', function()
    TriggerServerEvent('QBCore:Server:RemoveItem', 'card_lottery', 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['card_lottery'], "remove")
    TriggerServerEvent('bejo-lottery:server:OpenLotteryCard')
end)

RegisterNetEvent('bejo-lottery:client:OpenCard2', function()
    TriggerServerEvent('QBCore:Server:RemoveItem', 'card_lottery2', 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['card_lottery2'], "remove")
    TriggerServerEvent('bejo-lottery:server:OpenLotteryCard2')
end)

RegisterNetEvent('bejo-lottery:client:OpenCard3', function()
    TriggerServerEvent('QBCore:Server:RemoveItem', 'card_lottery3', 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['card_lottery3'], "remove")
    TriggerServerEvent('bejo-lottery:server:OpenLotteryCard3')
end)

CreateThread(function()
    RequestModel(`g_m_m_armboss_01`)
      while not HasModelLoaded(`g_m_m_armboss_01`) do
      Wait(1)
    end
      LotteryShopPed = CreatePed(2, `g_m_m_armboss_01`, Config.ShopPedLoc, false, false)
      SetPedFleeAttributes(LotteryShopPed, 0, 0)
      SetPedDiesWhenInjured(LotteryShopPed, false)
      TaskStartScenarioInPlace(LotteryShopPed, "WORLD_HUMAN_STAND_IMPATIENT", 0, true)
      SetBlockingOfNonTemporaryEvents(LotteryShopPed, true)
      FreezeEntityPosition(LotteryShopPed, true)
      SetPedKeepTask(LotteryShopPed, true)
      SetEntityInvincible(LotteryShopPed, true)
end)
