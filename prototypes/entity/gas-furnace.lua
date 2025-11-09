require("constants")

data:extend({
    {
        type                              = "furnace",
        name                              = "gas-furnace",
        allowed_effects                   = { "consumption", "speed", "productivity", "pollution", "quality" },

        circuit_connector                 = table.deepcopy(data.raw["furnace"]["stone-furnace"].circuit_connector),
        circuit_wire_max_distance         = 9,

        graphics_set                      = {
            animation = {
                layers = {
                    {
                        animation_speed = 0.75,
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = true,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/steel-furnace-shadow.png",
                        height = 128,
                        priority = "high",
                        scale = 0.5,
                        shift = { 1, 0.5 },
                        width = 320,
                        x = 0,
                        y = 0
                    },
                    {
                        animation_speed = 0.75,
                        draw_as_glow = false,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/steel-furnace-base.png",
                        height = 256,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -0.5 },
                        width = 192,
                        x = 0,
                        y = 0
                    }
                }
            },
            working_visualisations = {
                {
                    always_draw = false,
                    animation = {
                        animation_speed = 1,
                        blend_mode = "additive",
                        draw_as_glow = true,
                        draw_as_light = false,
                        draw_as_shadow = false,
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/steel-furnace-glow.png",
                        frame_count = 60,
                        height = 160,
                        line_length = 10,
                        priority = "high",
                        scale = 0.5,
                        shift = { 0, -1.25 },
                        width = 160,
                        x = 0,
                        y = 0
                    },
                    fadeout = true,
                    render_layer = "object"
                }
            }
        },
        close_sound                       = {
            filename = "__base__/sound/machine-close.ogg",
            volume = 0.5
        },
        collision_box                     = {
            { -1.25, -1.25 },
            { 1.25,  1.25 }
        },
        corpse                            = "medium-remnants",
        crafting_categories               = { "smelting" },
        crafting_speed                    = 2.5,
        damaged_trigger_effect            = {
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
                particle_name = "steel-particle",
                probability = 1,
                repeat_count = 1,
                speed_from_center = 0.02,
                speed_from_center_deviation = 0.01,
                type = "create-particle"
            }
        },
        dying_explosion                   = "gas-furnace-explosion",
        energy_source                     = {
            type                 = "fluid",
            burns_fluid          = true,
            scale_fluid_usage    = true,
            emissions_per_minute = { pollution = 1 },
            fluid_box            = {
                volume = 200,
                pipe_connections = {
                    {
                        direction = defines.direction.north,
                        position = { 0, -1 },
                    },
                    {
                        direction = defines.direction.south,
                        position = { 0, 1 },
                    },
                },
                pipe_covers = PIPE_COVERS,
                pipe_picture = PIPE_PICTURES,
                secondary_draw_orders = { north = -1 },
            },
            light_flicker        = { color = { r = 0, g = 0, b = 0, a = 0 } },
        },
        energy_usage                      = "0.05MW",
        entity_info_icon_shift            = { 0, 0 },
        fast_replaceable_group            = "furnace",
        flags                             = { "placeable-player", "placeable-neutral", "player-creation" },
        gui_title_key                     = "gui-title.smelting",
        icon                              = "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-furnace.png",
        icon_mipmaps                      = 4,
        icon_size                         = 64,
        match_animation_speed_to_activity = false,
        max_health                        = 350,
        minable                           = { mining_time = 0.2, result = "gas-furnace" },
        mined_sound                       = { filename = "__core__/sound/deconstruct-large.ogg" },
        module_slots                      = 2,
        open_sound                        = { filename = "__base__/sound/machine-open.ogg", volume = 0.5 },
        placeable_by                      = { count = 1, item = "gas-furnace" },
        resistances                       = {
            {
                type = "fire",
                percent = 80,
            },
        },
        result_inventory_size             = 1,
        heating_energy                    = "100kW",
        custom_tooltip_fields             = {
            {
                name = { "tooltip.heating-energy" },
                value = {
                    "",
                    "100",
                    " ",
                    { "si-prefix-symbol-kilo" },
                    { "si-unit-symbol-watt" },
                },
                order = 200,
            },
        },
        selection_box                     = {
            { -1.5, -1.5 },
            { 1.5,  1.5 }
        },
        source_inventory_size             = 1,
        status_colors                     = STATUS_COLORS,
        tile_height                       = 3,
        tile_width                        = 3,
        vehicle_impact_sound              = {
            game_controller_vibration_data = {
                duration = 150,
                low_frequency_vibration_intensity = 0.9
            },
            switch_vibration_data = {
                filename = "__base__/sound/car-metal-impact.bnvib"
            },
            variations = {
                {
                    filename = "__base__/sound/car-metal-impact-2.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-3.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-4.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-5.ogg",
                    volume = 0.5
                },
                {
                    filename = "__base__/sound/car-metal-impact-6.ogg",
                    volume = 0.5
                }
            }
        },
        working_sound                     = {
            fade_in_ticks = 10,
            fade_out_ticks = 30,
            sound = {
                filename = "__IndustrialRevolution3Assets1__/sound/gas-loop.ogg",
                volume = 0.8
            }
        }
    }
})
