local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
    {
        type = "furnace",
        name = "electric-furnace",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/electric-furnace.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "electric-furnace" },
        fast_replaceable_group = "furnace",
        circuit_wire_max_distance = furnace_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["electric-furnace"],
        max_health = 350,
        corpse = "electric-furnace-remnants",
        dying_explosion = "electric-furnace-explosion",
        resistances =
        {
            {
                type = "fire",
                percent = 80
            }
        },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        damaged_trigger_effect = hit_effects.entity(),
        module_slots = 2,
        icon_draw_specification = { shift = { 0, -0.1 } },
        allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
        crafting_categories = { "smelting" },
        result_inventory_size = 1,
        crafting_speed = 2,
        energy_usage = "180kW",
        source_inventory_size = 1,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 1 }
        },
        impact_category = "metal",
        open_sound = sounds.electric_large_open,
        close_sound = sounds.electric_large_close,
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/electric-furnace.ogg",
                volume = 0.85,
                modifiers = volume_multiplier("main-menu", 4.2),
                advanced_volume_control = { attenuation = "exponential" },
                audible_distance_modifier = 0.7,
            },
            max_sounds_per_prototype = 4,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },

        graphics_set = {
            animation = {
                layers = {
                    {
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/electric-furnace-shadow.png",
                        priority = "high",
                        width = 320,
                        height = 128,
                        animation_speed = 0.75,
                        scale = 0.5,
                        shift = { 1, 0.5 },
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = true,
                        x = 0,
                        y = 0
                    },
                    {
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/electric-furnace-base.png",
                        priority = "high",
                        width = 192,
                        height = 256,
                        animation_speed = 0.75,
                        scale = 0.5,
                        shift = { 0, -0.5 },
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        x = 0,
                        y = 0
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
                        draw_as_light = false,
                        draw_as_shadow = false,
                        blend_mode = "additive",
                        x = 0,
                        y = 0
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
                        animation_speed = 1,
                        scale = 0.5,
                        shift = { 0, 0.5 },
                        draw_as_glow = false,
                        draw_as_light = true,
                        draw_as_shadow = false,
                        blend_mode = "additive",
                        tint = { r = 1, g = 0.6, b = 0, a = 1 },
                        x = 0,
                        y = 0
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
                        animation_speed = 1,
                        scale = 0.5,
                        shift = { 0, -1 },
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        blend_mode = "additive",
                        x = 0,
                        y = 0
                    },
                    apply_tint = "status",
                    render_layer = "object"
                }
            }
        }
    }
})
