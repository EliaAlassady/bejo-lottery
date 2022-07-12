local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('bejo-lottery:server:GetCard', function(data)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local quantity = 1
    local bank = 'bank'
    local price = Config.CardPrice
    local item = 'card_lottery'
    if player.Functions.AddItem(item, quantity) then
        player.Functions.RemoveMoney(bank, price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, 'لقد اشتريت كارت اليانصيب العادي', 'primary')
    else
        TriggerClientEvent('QBCore:Notify', src, 'ليس لديك نقود كافية', 'error')
    end
end)

RegisterNetEvent('bejo-lottery:server:GetCard2', function(data)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local quantity = 1
    local price = Config.CardPrice2
    local bank = 'bank'
    local item = 'card_lottery2'
    if player.Functions.AddItem(item, quantity) then
        player.Functions.RemoveMoney(bank, price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, 'لقد اشتريت كارت اليانصيب المتوسط', 'primary')
    else
        TriggerClientEvent('QBCore:Notify', src, 'ليس لديك نقود كافية', 'erorr')
    end
end)

RegisterNetEvent('bejo-lottery:server:GetCard3', function(data)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local quantity = 1
    local price = Config.CardPrice3
    local bank = 'bank'
    local item = 'card_lottery3'
    if player.Functions.AddItem(item, quantity) then
        player.Functions.RemoveMoney(bank, price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('QBCore:Notify', src, 'لقد اشتريت كارت اليانصيب الممتازة', 'primary')
    else
        TriggerClientEvent('QBCore:Notify', src, 'ليس لديك نقود كافية', 'erorr')
    end
end)

QBCore.Functions.CreateUseableItem("card_lottery", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('bejo-lottery:client:OpenCard', source)
    end
end)

QBCore.Functions.CreateUseableItem("card_lottery2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('bejo-lottery:client:OpenCard2', source)
    end
end)

QBCore.Functions.CreateUseableItem("card_lottery3", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('bejo-lottery:client:OpenCard3', source)
    end
end)

RegisterNetEvent('bejo-lottery:server:OpenLotteryCard', function()
    local player = QBCore.Functions.GetPlayer(source)
    local random = math.random(1, 100)
    if random >= 0 and random <= 50 then
        player.Functions.AddMoney('cash', Config.Rewards['Card']['FirstReward'])
    elseif random > 50 and random <= 70 then
        player.Functions.AddMoney('cash', Config.Rewards['Card']['SecondReward'])
    elseif random > 70 and random <= 100 then
        player.Functions.AddMoney('cash', Config.Rewards['Card']['ThirdReward'])
    else
        TriggerClientEvent('QBCore:Notify', source, 'لم تحصل على شيء حظ اوفر', 'erorr')
    end
end)

RegisterNetEvent('bejo-lottery:server:OpenLotteryCard2', function()
    local player = QBCore.Functions.GetPlayer(source)
    local random = math.random(1, 100)
    if random >= 0 and random <= 50 then
        player.Functions.AddMoney('cash', Config.Rewards['Card2']['FirstReward'])
    elseif random > 50 and random <= 70 then
        player.Functions.AddMoney('cash', Config.Rewards['Card2']['SecondReward'])
    elseif random > 70 and random <= 90 then
        player.Functions.AddMoney('cash', Config.Rewards['Card2']['ThirdReward'])
    elseif random > 90 and random <= 95 then
        player.Functions.AddMoney('cash', Config.Rewards['Card2']['ThirdReward'])
    else
        TriggerClientEvent('QBCore:Notify', source, 'لم تحصل على شيء حظ اوفر', 'erorr')
    end
end)

RegisterNetEvent('bejo-lottery:server:OpenLotteryCard3', function()
    local player = QBCore.Functions.GetPlayer(source)
    local random = math.random(1, 100)
    if random >= 0 and random <= 50 then
        player.Functions.AddMoney('cash', Config.Rewards['Card3']['FirstReward'])
    elseif random > 50 and random <= 70 then
        player.Functions.AddMoney('cash', Config.Rewards['Card3']['SecondReward'])
    elseif random > 70 and random <= 80 then
        player.Functions.AddMoney('cash', Config.Rewards['Card3']['ThirdReward'])
    elseif random > 80 and random <= 90 then
        player.Functions.AddMoney('cash', Config.Rewards['Card3']['ThirdReward'])
    elseif random > 90 and random <= 95 then
        player.Functions.AddMoney('cash', Config.Rewards['Card3']['ThirdReward'])
    else
        TriggerClientEvent('QBCore:Notify', source, 'لم تحصل على شيء حظ اوفر', 'erorr')
    end
end)