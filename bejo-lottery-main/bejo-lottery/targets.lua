Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("lottery", Config.ShopPedLoc, 1, 1, {
        name = "lottery",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "bejo-lottery:client:CardShopMenu",
                icon = "fas fa-shop",
                label = "شراء من الموظف",
            },
        },
        distance = 1
    })
end)