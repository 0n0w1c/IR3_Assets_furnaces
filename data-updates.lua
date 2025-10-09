if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("prototypes/entity/stone-furnace")
require("prototypes/item/stone-furnace")

require("prototypes/entity/steel-furnace")
require("prototypes/item/steel-furnace")

require("prototypes/entity/electric-furnace")
require("prototypes/item/electric-furnace")
