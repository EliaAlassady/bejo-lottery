Config = {
    ['Rewards'] = { -- الجوائز
        ['Card'] = {  -- البطاقة العادية
            ['FirstReward'] = math.random(1000 , 2000), -- الجائزة المالية الأولى
            ['SecondReward'] =  math.random(2500, 4000),  -- الجائزة المالية الثانية
            ['ThirdReward'] =  math.random(4000, 6000),  -- الجائزة المالية الثالثة
        },
        ['Card2'] = { -- البطاقة المتوسطة
            ['FirstReward'] = math.random(3000, 4000),  -- الجائزة المالية الأولى
            ['SecondReward'] =  math.random(5000, 7000),  -- الجائزة المالية الثانية
            ['ThirdReward'] =  math.random(7000, 10000),  -- الجائزة المالية الثالثة
            ['FourthReward'] =  'car_ticket',  -- الجائزة الرابعة
        },
        ['Card3'] = { -- البطاقة الممتازة
            ['FirstReward'] = math.random(8000, 10000),  -- الجائزة المالية الأولى
            ['SecondReward'] =  math.random(10000, 14000),  -- الجائزة المالية الثانية
            ['ThirdReward'] =  math.random(13000, 20000),  -- الجائزة المالية الثالثة
            ['FourthReward'] =  'car_ticket',  -- الجائزة الرابعة
            ['FifthReward'] =  'car_ticket2',  -- الجائزة الخامسة
        },
    },
}

Config.ShopPedLoc = vector4(462.86, -693.97, 26.4, 91.31) -- موقع موظف بيع البطاقات

Config.CardPrice = 2500 -- سعر البطاقة العادية
Config.CardPrice2 = 5000 -- سعر البطاقة المتوسطة
Config.CardPrice3 = 10000 -- سعر البطاقة الممتازة