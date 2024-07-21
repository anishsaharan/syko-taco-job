local QBCore = exports['qb-core']:GetCoreObject()   

RegisterNetEvent('syko-taco:client:Eat', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar("eat_something", "Munching..", 5000, false, false, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + HungerFill[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(5, 8))
    end)
end)

RegisterNetEvent('syko-taco:client:Drink', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"soda"})
    QBCore.Functions.Progressbar("drink_something", "Drinking..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + ThirstFill[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(5, 8))
    end)
end)  

-- Beef Taco
RegisterNetEvent('syko-taco:client:makeBeefTaco', function()
	local ingredients = QBCore.Functions.HasItem({'tortillas', 'ground-beef', 'taco-tomato'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "Cooking Food........", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("syko-taco:server:makeBeefTaco")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tortillas"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ground-beef"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["taco-tomato"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["beef-taco"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('syko-taco:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('syko-taco:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Chicken Burrito
RegisterNetEvent('syko-taco:client:makeChickenBurrito', function()
	local ingredients = QBCore.Functions.HasItem({'tortillas', 'chicken', 'lettuce'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "Cooking Food........", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("syko-taco:server:makeChickenBurrito")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tortillas"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["chicken"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lettuce"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["chicken-burrito"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('syko-taco:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('syko-taco:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Quesadillas
RegisterNetEvent('syko-taco:client:makeQuesadillas', function()
	local ingredients = QBCore.Functions.HasItem({"tortillas", "cheddar-cheese", "butter"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "Cooking Food........", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("syko-taco:server:makeQuesadillas")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tortillas"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cheddar-cheese"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["butter"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["quesadilla"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('syko-taco:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('syko-taco:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Nachos
RegisterNetEvent('syko-taco:client:makeNachos', function()
	local ingredients = QBCore.Functions.HasItem({"tortilla-chips", "cheddar-cheese"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "Cooking Food........", 8000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("syko-taco:server:makeNachos")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tortilla-chips"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cheddar-cheese"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["nachos"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('syko-taco:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('syko-taco:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Coke Soda
RegisterNetEvent('syko-taco:client:makeCokeSoda', function()
	local ingredients = QBCore.Functions.HasItem({"carbonated-water", "sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "Making Drinks.........", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("syko-taco:server:makeCokeSoda")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["coke-soda"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('syko-taco:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- Fanta
RegisterNetEvent('syko-taco:client:makeFanta', function()
	local ingredients = QBCore.Functions.HasItem({"carbonated-water", "sugar-cubes"})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "deepfry", 0.02)
        QBCore.Functions.Progressbar("taco_stuff", "Making Drinks.........", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("syko-taco:server:makeFanta")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["carbonated-water"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sugar-cubes"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["fanta"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('syko-taco:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

-- MENUS --     

RegisterNetEvent('syko-taco:closemenu', function()
    ClearPedTasksImmediately(PlayerPedId())
    TriggerEvent("qb-menu:closeMenu")
end)

RegisterNetEvent('syko-taco:client:cookStation', function()                   
    exports['qb-menu']:openMenu({
        {
            header = "Taco Cooking Station",
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Beef Taco",
            txt = "Requires:</p>1x Tortillas | 1x Ground Beef | 1x Tomato",
            icon = "fa-solid fa-burger",
            params = {
                event = "syko-taco:client:makeBeefTaco",
            }
        },
        {
            header = "Quesadilla",
            txt = "Requires:</p>1x Tortillas | 1x Cheddar Cheese | 1x Butter ",
            icon = "fa-solid fa-burger",
            params = {
                event = "syko-taco:client:makeQuesadillas",
            }
        },
        {
            header = "Chicken Burrito",
            txt = "Requires:</p>1x Tortillas | 1x Chicken | 1x Lettuce",
            icon = "fa-solid fa-burger",
            params = {
                event = "syko-taco:client:makeChickenBurrito",
            }
        },
        {
            header = "Nachos",
            txt = "Requires:</p>1x Tortilla Chips | 1x Cheddar Cheese",
            icon = "fa-solid fa-burger",
            params = {
                event = "syko-taco:client:makeNachos",
            }
        },
        {
            header = "Exit",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "syko-taco:closemenu"
            }
        },
    })
end)

RegisterNetEvent('syko-taco:client:drinkStation', function() 
    exports['qb-menu']:openMenu({
        {
            header = "Drink Station",
            txt = "",
            isMenuHeader = true
        },
        {
            header = "Coke Soda",
            txt = "Requires:</p>1x Carbonated Water | 1x Sugar Cubes",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "syko-taco:client:makeCokeSoda",
            }
        },
        {
            header = "Fanta",
            txt = "Requires:</p>1x Carbonated Water | 1x Sugar Cubes",
            icon = "fa-solid fa-mug-hot",
            params = {
                event = "syko-taco:client:makeFanta",
            }
        },
        {
            header = "Exit",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "syko-taco:closemenu"
            }
        },
    })
end)