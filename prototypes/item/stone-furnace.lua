local item_sounds = require("__base__/prototypes/item_sounds")

data:extend({
    {
        type = "item",
        name = "stone-furnace",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/stone-furnace.png",
        subgroup = "smelting-machine",
        order = "a[stone-furnace]",
        inventory_move_sound = item_sounds.brick_inventory_move,
        pick_sound = item_sounds.brick_inventory_pickup,
        drop_sound = item_sounds.brick_inventory_move,
        place_result = "stone-furnace",
        stack_size = 50
    }
})
