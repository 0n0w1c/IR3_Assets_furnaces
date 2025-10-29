require("scaling")

local entity                       = data.raw["furnace"]["stone-furnace"]

entity.icon                        = "__IndustrialRevolution3Assets1__/graphics/icons/64/stone-furnace.png"
entity.collision_box               = COLLISION_BOX
entity.selection_box               = SELECTION_BOX

entity.corpse                      = REMNANTS
entity.dying_explosion             = "stone-furnace-explosion"

entity.damaged_trigger_effect      = {
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
        particle_name = "stone-particle",
        probability = 0.66666666666666661,
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
        particle_name = "wood-particle",
        probability = 0.3333333333333333,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.energy_source.light_flicker = {
    color = { r = 0, g = 0, b = 0, a = 1 },
    minimum_intensity = 0.6,
    maximum_intensity = 0.95
}

entity.energy_source.smoke         = {
    {
        name = "smoke",
        deviation = { 0.1, 0.1 },
        frequency = 5,
        position = { 0.0, -0.8 * SHIFT_FACTOR },
        starting_vertical_speed = 0.08,
        starting_frame_deviation = 60
    }
}

entity.graphics_set                = {
    animation = {
        layers = {
            {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-furnace-base.png",
                priority = "high",
                width = 192,
                height = 256,
                animation_speed = 1,
                scale = SPRITE_SCALE,
                shift = BASE_SHIFT,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                x = 0,
                y = 0
            },
            {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-furnace-shadow.png",
                priority = "high",
                width = 320,
                height = 128,
                animation_speed = 1,
                scale = SPRITE_SCALE,
                shift = SHADOW_SHIFT,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                x = 0,
                y = 0
            }
        }
    },
    working_visualisations = {
        {
            animation = {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-furnace-working.png",
                priority = "high",
                width = 192,
                height = 256,
                frame_count = 30,
                line_length = 6,
                animation_speed = 1,
                scale = SPRITE_SCALE,
                shift = WORKING_SHIFT,
                draw_as_glow = true,
                draw_as_light = false,
                draw_as_shadow = false,
                blend_mode = "additive",
            },
            fadeout = true
        },
        {
            animation = {
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-furnace-floor-glow.png",
                priority = "high",
                width = 192,
                height = 128,
                animation_speed = 0.5,
                scale = SPRITE_SCALE,
                shift = FLOOR_GLOW_SHIFT,
                draw_as_glow = false,
                draw_as_light = true,
                draw_as_shadow = false,
                blend_mode = "additive",
                tint = { r = 1, g = 0.45, b = 0, a = 1 }
            },
            effect = "flicker",
            fadeout = true,
            light = {
                color = { r = 1, g = 0.45, b = 0, a = 1 },
                intensity = 0.5,
                size = 4,
                shift = LIGHT_SHIFT
            }
        }
    }
}
