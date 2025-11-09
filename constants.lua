STATUS_COLORS = {
    disabled             = { r = 1, g = 0.25, b = 0.25, a = 1 },
    full_output          = { r = 1, g = 0.625, b = 0.25, a = 1 },
    idle                 = { r = 0.25, g = 0.625, b = 1, a = 1 },
    insufficient_input   = { r = 1, g = 0.625, b = 0.25, a = 1 },
    low_power            = { r = 1, g = 0.25, b = 0.25, a = 1 },
    no_minable_resources = { r = 0.25, g = 0.625, b = 1, a = 1 },
    no_power             = { r = 0, g = 0, b = 0, a = 0 },
    working              = { r = 0.25, g = 1, b = 0.25, a = 1 },
}

PIPE_COVERS = {
    north = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cn.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 1 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cn.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 1 },
                draw_as_shadow = true
            }
        }
    },

    east = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-ce.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { -1, 0 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ce.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { -1, 0 },
                draw_as_shadow = true
            }
        }
    },

    south = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cs.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -1 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cs.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -1 },
                draw_as_shadow = true
            }
        }
    },

    west = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cw.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 1, 0 }
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cw.png",
                width = 180,
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 1, 0 },
                draw_as_shadow = true
            }
        }
    }
}

PIPE_PICTURES = {
    east = {
        layers = {
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-shadow-east.png",
                height = 192,
                priority = "high",
                scale = 0.5,
                shift = { -1.5, 0.5 },
                width = 256,
                x = 0,
                y = 0
            },
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-tint.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { -2, 0.5 },
                tint = { r = 0.125, g = 0.375, b = 0.75, a = 1 },
                width = 192,
                x = 0,
                y = 0
            },
            {
                blend_mode = "additive",
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-white.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { -2, 0.5 },
                width = 192,
                x = 0,
                y = 0
            },
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-connector.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { -2, 0.5 },
                width = 192,
                x = 0,
                y = 0
            }
        }
    },
    north = {
        apply_runtime_tint = false,
        direction_count = 1,
        draw_as_glow = false,
        draw_as_light = false,
        draw_as_shadow = false,
        filename = "__IndustrialRevolution3Assets3__/graphics/entities/machines/misc/blank.png",
        height = 1,
        priority = "high",
        repeat_count = 1,
        scale = 0.5,
        shift = { 0, 0 },
        width = 1,
        x = 0,
        y = 0
    },
    south = {
        layers = {
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-shadow-south.png",
                height = 192,
                priority = "high",
                scale = 0.5,
                shift = { 0.5, -1.5 },
                width = 256,
                x = 0,
                y = 0
            },
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-tint.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { 0, -1.5 },
                width = 192,
                x = 192,
                y = 0
            },
            {
                blend_mode = "additive",
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-white.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { 0, -1.5 },
                width = 192,
                x = 192,
                y = 0
            },
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-connector.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { 0, -1.5 },
                width = 192,
                x = 192,
                y = 0
            }
        }
    },
    west = {
        layers = {
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-shadow-west.png",
                height = 192,
                priority = "high",
                scale = 0.5,
                shift = { 2.5, 0.5 },
                width = 256,
                x = 0,
                y = 0
            },
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-tint.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { 2, 0.5 },
                width = 192,
                x = 384,
                y = 0
            },
            {
                blend_mode = "additive",
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-white.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { 2, 0.5 },
                width = 192,
                x = 384,
                y = 0
            },
            {
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets2__/graphics/entities/machines/furnaces/furnace-connectors-connector.png",
                height = 256,
                priority = "high",
                scale = 0.5,
                shift = { 2, 0.5 },
                width = 192,
                x = 384,
                y = 0
            }
        }
    }
}
