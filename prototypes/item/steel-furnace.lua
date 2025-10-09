local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "steel-furnace",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/stone-alloy-furnace.png",
        subgroup = "smelting-machine",
        order = "b[steel-furnace]",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        place_result = "steel-furnace",
        stack_size = 50
    }
})
