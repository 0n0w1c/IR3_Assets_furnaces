data:extend({
    {
        type = "item",
        name = "gas-furnace",
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-furnace.png",
                icon_mipmaps = 4,
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/natural-gas.png",
                icon_mipmaps = 4,
                icon_size = 64,
                scale = 0.25,
                shift = { -7, 10 },
                tint = { r = 0, g = 0, b = 0, a = 0.4
                }
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/natural-gas.png",
                icon_mipmaps = 4,
                icon_size = 64,
                scale = 0.25,
                shift = { -8.5, 8.5 }
            }
        },
        place_result = "gas-furnace",
        stack_size = 50,
        weight = 20000,
        subgroup = "smelting-machine",
        order = "a[furnace]-c[gas-furnace]",
    }
})
