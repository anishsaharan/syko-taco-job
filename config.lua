Config = {}

Config.GaragePed = "ig_karen_daniels"

Config.PedLocation = vector4(13.67, -1612.43, 28.40, 197.47)

Config.VehicleSpawn = vector4(16.02, -1613.69, 29.19, 139.89)

Config.Vehicle = 'taco'

HungerFill = {
    ["beef-taco"] = math.random(35, 45),
    ["chicken-burrito"] = math.random(35, 45),
    ["quesadilla"] = math.random(35, 45),
    ["nachos"] = math.random(35, 45),
}

ThirstFill = {
    ["coke-soda"] = math.random(30, 40),
    ["fanta"] = math.random(30, 40),
}

Config.Zones = {
    [1] = { coords = vector3(15.86, -1597.67, 29.51), radius = 1.35, icon = "fa-solid fa-box-open", event = "jissuunnn-taco:client:ingredientStore", label = "Ingredients", job = "taco" },
    [2] = { coords = vector3(8.2, -1607.3, 29.55), radius = 0.75, icon = "fa-solid fa-briefcase", event = "qb-bossmenu:client:OpenMenu", label = "Manage Business", job = {['taco'] = 1} },	
    [3] = { coords = vector3(10.54, -1604.72, 29.55), radius = 0.8, icon = "far fa-clipboard", event = "jissuunnn-taco:client:frontTray1", label = "Counter", },  
    [4] = { coords = vector3(13.4, -1595.8, 29.64), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "jissuunnn-taco:client:drinkStation", label = "Make Drinks", job = "taco" },  
    [5] = { coords = vector3(10.86, -1598.91, 29.42), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "jissuunnn-taco:client:cookStation", label = "Cook Food", job = "taco" },  
    [6] = { coords = vector3(17.18, -1599.4, 29.81), radius = 0.9, icon = "fa-solid fa-square-up-right", event = "jissuunnn-taco:client:jobFridge1", label = "Fridge", job = "taco" },
    [7] = { coords = vector3(8.23, -1607.4, 29.61), radius = 0.6, icon = "fa-solid fa-clock", event = "jissuunnn-taco:clientToggleDuty", label = "Clock In/Out", job = "taco" },
    [8] = { coords = vector3(9.81, -1605.62, 29.62), radius = 0.5, icon = "fa-brands fa-cc-visa", event = "jissuunnn-taco:bill", label = "Bill Customer", job = "taco" },
}

Config.Items = {
label = "Shop",
    slots = 9,
    items = {
        [1] = {
            name = "tortillas",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "ground-beef",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "cheddar-cheese",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "butter",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "chicken",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },       
		[6] = {
            name = "lettuce",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
		[7] = {
            name = "tortilla-chips",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
		[8] = {
            name = "carbonated-water",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
		[9] = {
            name = "sugar-cubes",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "taco-tomato",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
    }
}
