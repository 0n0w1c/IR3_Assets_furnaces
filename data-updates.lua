if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("prototypes/explosion/stone-furnace-explosion")
require("prototypes/entity/stone-furnace")
require("prototypes/item/stone-furnace")

require("prototypes/explosion/steel-furnace-explosion")
require("prototypes/entity/steel-furnace")
require("prototypes/item/steel-furnace")
require("prototypes/technology/advanced-material-processing")

require("prototypes/explosion/electric-furnace-explosion")
require("prototypes/entity/electric-furnace")
require("prototypes/item/electric-furnace")
require("prototypes/technology/advanced-material-processing-2")
