data:extend({
    {
        type = "recipe",
        name = "gas-furnace",
        always_show_products = true,
        category = "crafting",
        enabled = false,
        energy_required = 4,
        ingredients = {
            { type = "item", name = "steel-plate",      amount = 4 },
            { type = "item", name = "advanced-circuit", amount = 5 },
            { type = "item", name = "steel-furnace",    amount = 1 }
        },
        results = { { type = "item", name = "gas-furnace", amount = 1 } },
        show_amount_in_title = false,
    }
})
