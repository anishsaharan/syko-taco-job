# README

## Taco Job for QBCore

Simple Taco job with eye-target

## Project Description

This project provides a Taco job script for the QBCore framework in GTA V. The job includes tasks related to a Taco Cafe, such as preparing and selling various taco-related items. The script is designed to enhance roleplay experiences by adding a new job to the game.

### Author

This project is created and maintained by Anish, a professional developer in the GTA development community, known by the pet name Syko.

### Dependencies

- **qb-core** - [qb-core on GitHub](https://github.com/qbcore-framework/qb-core) (Latest)
- **qb-target** - [qb-target on GitHub](https://github.com/BerkieBb/qb-target)
- **MLO** - [syko-taco-mlo](https://github.com/anishsaharan/syko-taco-mlo)

If you don't have the MLO, you can use this [syko-taco-mlo](https://github.com/anishsaharan/syko-taco-mlo)

### Installation

1. **Clone the repository**: Clone or download the repository to your local machine.
   ```sh
   git clone [https://github.com/anishsaharan/syko-taco-job.git]
   ```

2. **Add job to `qb-core/shared/jobs.lua`**: Add the following entry to the jobs configuration.
   ```lua
   ['taco'] = {
       label = 'Taco Shop',
       defaultDuty = true,
       offDutyPay = false,
       grades = {
           ['0'] = {
               name = 'Cook',
               payment = 75
           },
           ['1'] = {
               name = 'Manager',
               isboss = true,
               payment = 150,
           },
       },
   },
   ```

3. **Add items to `qb-core/shared/items.lua`**: Add the following entries to the items configuration.
   ```lua
   -- Taco Food
   ["beef-taco"] = {["name"] = "beef-taco", ["label"] = "Beef Taco", ["weight"] = 250, ["type"] = "item", ["image"] = "beef-taco.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Beef Taco!"},
   ["quesadilla"] = {["name"] = "quesadilla", ["label"] = "Quesadilla", ["weight"] = 250, ["type"] = "item", ["image"] = "quesadilla.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Quesadilla!"},
   ["chicken-burrito"] = {["name"] = "chicken-burrito", ["label"] = "Chicken Burrito", ["weight"] = 250, ["type"] = "item", ["image"] = "chicken-burrito.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Chicken Burrito!"},
   ["nachos"] = {["name"] = "nachos", ["label"] = "Nachos", ["weight"] = 250, ["type"] = "item", ["image"] = "nachos.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Nachos!"},
   
   -- Taco Drinks
   ["coke-soda"] = {["name"] = "coke-soda", ["label"] = "Coke Soda", ["weight"] = 180, ["type"] = "item", ["image"] = "coke-soda.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Coke Soda!"},
   ["fanta"] = {["name"] = "fanta", ["label"] = "Fanta", ["weight"] = 180, ["type"] = "item", ["image"] = "fanta.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Fanta!"},
   
   -- Ingredients
   ["tortillas"] = {["name"] = "tortillas", ["label"] = "Tortillas", ["weight"] = 150, ["type"] = "item", ["image"] = "tortillas.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["ground-beef"] = {["name"] = "ground-beef", ["label"] = "Ground Beef", ["weight"] = 210, ["type"] = "item", ["image"] = "ground-beef.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["cheddar-cheese"] = {["name"] = "cheddar-cheese", ["label"] = "Cheddar Cheese", ["weight"] = 125, ["type"] = "item", ["image"] = "cheddar-cheese.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["butter"] = {["name"] = "butter", ["label"] = "Butter", ["weight"] = 125, ["type"] = "item", ["image"] = "butter.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Smooth like butter, like a criminal undercover~"},
   ["chicken"] = {["name"] = "chicken", ["label"] = "Chicken", ["weight"] = 180, ["type"] = "item", ["image"] = "chicken.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["lettuce"] = {["name"] = "lettuce", ["label"] = "Lettuce", ["weight"] = 150, ["type"] = "item", ["image"] = "lettuce.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["tortilla-chips"] = {["name"] = "tortilla-chips", ["label"] = "Tortilla Chips", ["weight"] = 150, ["type"] = "item", ["image"] = "tortilla-chips.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["carbonated-water"] = {["name"] = "carbonated-water", ["label"] = "Carbonated Water", ["weight"] = 125, ["type"] = "item", ["image"] = "carbonated-water.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["sugar-cubes"] = {["name"] = "sugar-cubes", ["label"] = "Sugar Cubes", ["weight"] = 100, ["type"] = "item", ["image"] = "sugar-cubes.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ["taco-tomato"] = {["name"] = "taco-tomato", ["label"] = "Tomatoes", ["weight"] = 100, ["type"] = "item", ["image"] = "taco-tomato.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Ingredient"},
   ```

4. **Add sounds**: Add the 2 `.ogg` files in `[sounds]` to `interact-sound/client/html/sounds`.

5. **Add images**: Copy and paste the pictures in `[images]` to `qb-inventory/html/images` or to whatever inventory script you're using.


### Contact

For any questions or support, you can reach out to me through the GitHub.

Happy modding!

Anish (Syko)
