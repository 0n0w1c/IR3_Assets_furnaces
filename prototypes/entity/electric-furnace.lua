local entity                  = data.raw["furnace"]["electric-furnace"]

entity.icon                   = "__IndustrialRevolution3Assets1__/graphics/icons/64/electric-furnace.png"

entity.circuit_connector      = table.deepcopy(data.raw["furnace"]["stone-furnace"].circuit_connector)

entity.corpse                 = "medium-remnants"
entity.dying_explosion        = "electric-furnace-explosion"

entity.damaged_trigger_effect = {
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "copper-particle",
        probability = 0.18204444444444444,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "glass-particle",
        probability = 0.073955555555555552,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "iron-particle",
        probability = 0.59733333333333327,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.graphics_set           = {
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
