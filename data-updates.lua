if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

local recipe

require("prototypes/explosion/stone-furnace")
require("prototypes/entity/stone-furnace")
require("prototypes/item/stone-furnace")

recipe = data.raw["recipe"]["stone-furnace"]
if mods["quality"] and recipe then
    local recycling = require("__quality__/prototypes/recycling")
    recycling.generate_recycling_recipe(recipe)
end

require("prototypes/explosion/steel-furnace")
require("prototypes/entity/steel-furnace")
require("prototypes/item/steel-furnace")
require("prototypes/technology/advanced-material-processing")

recipe = data.raw["recipe"]["steel-furnace"]
if mods["quality"] and recipe then
    local recycling = require("__quality__/prototypes/recycling")
    recycling.generate_recycling_recipe(recipe)
end

require("prototypes/explosion/electric-furnace")
require("prototypes/entity/electric-furnace")
require("prototypes/item/electric-furnace")
require("prototypes/technology/advanced-material-processing-2")

recipe = data.raw["recipe"]["electric-furnace"]
if mods["quality"] and recipe then
    local recycling = require("__quality__/prototypes/recycling")
    recycling.generate_recycling_recipe(recipe)
end
