local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local use2x2 = settings.startup["IR3-furnace-2x2"] and settings.startup["IR3-furnace-2x2"].value or false

local SCALE_3x3 = 0.5
local SCALE_2x2 = 0.5 * (2 / 3)
local sprite_scale = use2x2 and SCALE_2x2 or SCALE_3x3

local SHIFT_FACTOR = use2x2 and (2 / 3) or 1

local collision_box, selection_box
if use2x2 then
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } }
    selection_box = { { -0.8, -1.0 }, { 0.8, 1.0 } }
else
    collision_box = { { -1.25, -1.25 }, { 1.25, 1.25 } }
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } }
end

local base_shift       = { 0 * SHIFT_FACTOR, -0.359375 * SHIFT_FACTOR }
local shadow_shift     = { 1 * SHIFT_FACTOR, 0.640625 * SHIFT_FACTOR }
local working_shift    = { 0 * SHIFT_FACTOR, -0.5 * SHIFT_FACTOR }
local floor_glow_shift = { 0 * SHIFT_FACTOR, 1.640625 * SHIFT_FACTOR }
local light_shift      = { 0 * SHIFT_FACTOR, 0.75 * SHIFT_FACTOR }

data:extend({
    {
        type = "furnace",
        name = "stone-furnace",
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/stone-furnace.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "stone-furnace" },
        fast_replaceable_group = "furnace",
        next_upgrade = "steel-furnace",

        circuit_wire_max_distance = furnace_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["stone-furnace"],

        max_health = 200,
        corpse = "stone-furnace-remnants",
        dying_explosion = "stone-furnace-explosion",
        repair_sound = sounds.manual_repair,
        mined_sound = sounds.deconstruct_bricks(0.8),
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        allowed_effects = { "speed", "consumption", "pollution" },
        effect_receiver = { uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true },
        impact_category = "stone",
        icon_draw_specification = { scale = 0.66, shift = { 0, -0.1 } },

        working_sound = {
            sound = {
                filename = "__base__/sound/furnace.ogg",
                volume = 0.6,
                modifiers = { volume_multiplier("main-menu", 1.5), volume_multiplier("tips-and-tricks", 1.4) },
                audible_distance_modifier = 0.4
            },
            fade_in_ticks = 4,
            fade_out_ticks = 20,
        },

        resistances = {
            { type = "fire",      percent = 90 },
            { type = "explosion", percent = 30 },
            { type = "impact",    percent = 30 }
        },

        collision_box = collision_box,
        selection_box = selection_box,
        damaged_trigger_effect = hit_effects.rock(),

        crafting_categories = { "smelting" },
        result_inventory_size = 1,
        energy_usage = "90kW",
        crafting_speed = 1,
        source_inventory_size = 1,

        energy_source = {
            type = "burner",
            fuel_categories = { "chemical" },
            effectivity = 1,
            fuel_inventory_size = 1,
            emissions_per_minute = { pollution = 2 },
            light_flicker = {
                color = { r = 0, g = 0, b = 0 },
                minimum_intensity = 0.6,
                maximum_intensity = 0.95
            },
            smoke = {
                {
                    name = "smoke",
                    deviation = { 0.1, 0.1 },
                    frequency = 5,
                    position = { 0.0, -0.8 * SHIFT_FACTOR },
                    starting_vertical_speed = 0.08,
                    starting_frame_deviation = 60
                }
            }
        },

        graphics_set = {
            animation = {
                layers = {
                    {
                        filename =
                        "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/stone-furnace-base.png",
                        priority = "high",
                        width = 192,
                        height = 256,
                        animation_speed = 1,
                        scale = sprite_scale,
                        shift = base_shift,
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
                        scale = sprite_scale,
                        shift = shadow_shift,
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
                        scale = sprite_scale,
                        shift = working_shift,
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
                        animation_speed = 1,
                        scale = sprite_scale,
                        shift = floor_glow_shift,
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
                        shift = light_shift
                    }
                }
            }
        }
    }
})
