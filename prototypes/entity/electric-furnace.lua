local entity             = data.raw["furnace"]["electric-furnace"]

entity.icon              = "__IndustrialRevolution3Assets1__/graphics/icons/64/electric-furnace.png"

entity.circuit_connector = table.deepcopy(data.raw["furnace"]["stone-furnace"].circuit_connector)

entity.graphics_set      = {
    status_colors = {
        disabled             = { r = 1, g = 0.25, b = 0.25, a = 1 },
        full_output          = { r = 1, g = 0.625, b = 0.25, a = 1 },
        idle                 = { r = 0.25, g = 0.625, b = 1, a = 1 },
        insufficient_input   = { r = 1, g = 0.625, b = 0.25, a = 1 },
        low_power            = { r = 1, g = 0.25, b = 0.25, a = 1 },
        no_minable_resources = { r = 0.25, g = 0.625, b = 1, a = 1 },
        no_power             = { r = 0, g = 0, b = 0, a = 0 },
        working              = { r = 0.25, g = 1, b = 0.25, a = 1 },
    },
    animation = {
        layers = {
            {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/electric-furnace-shadow.png",
                priority = "high",
                width = 320,
                height = 128,
                animation_speed = 1,
                scale = 0.5,
                shift = { 1, 0.5 },
                draw_as_shadow = true,
            },
            {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/electric-furnace-base.png",
                priority = "high",
                width = 192,
                height = 256,
                animation_speed = 1,
                scale = 0.5,
                shift = { 0, -0.5 },
            }
        }
    },
    working_visualisations = {
        {
            always_draw = false,
            animation = {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/electric-furnace-working.png",
                priority = "high",
                width = 64,
                height = 128,
                frame_count = 60,
                line_length = 15,
                animation_speed = 1,
                scale = 0.5,
                shift = { 0, -1.5 },
                draw_as_glow = true,
                blend_mode = "additive",
            },
            fadeout = true,
            render_layer = "object"
        },
        {
            animation = {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/electric-furnace-floor-glow.png",
                priority = "high",
                width = 192,
                height = 128,
                frame_count = 30,
                line_length = 5,
                animation_speed = 0.5,
                scale = 0.5,
                shift = { 0, 0.5 },
                draw_as_light = true,
                blend_mode = "additive",
                tint = { r = 1, g = 0.6, b = 0, a = 1 },
            },
            fadeout = true
        },
        {
            always_draw = true,
            animation = {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/electric-furnace-status.png",
                priority = "high",
                width = 192,
                height = 128,
                frame_count = 30,
                line_length = 5,
                animation_speed = 0.5,
                scale = 0.5,
                shift = { 0, -1 },
                draw_as_glow = true,
                blend_mode = "additive",
            },
            apply_tint = "status",
            render_layer = "object"
        }
    }
}
