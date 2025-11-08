USE2x2              = settings.startup["IR3-burner-furnace-size"] and
    settings.startup["IR3-burner-furnace-size"].value == "2x2"

SCALE_3x3           = 0.5
SCALE_2x2           = 0.5 * (2 / 3)
SPRITE_SCALE        = USE2x2 and SCALE_2x2 or SCALE_3x3

SHIFT_FACTOR        = USE2x2 and (2 / 3) or 1

BASE_SHIFT          = { 0 * SHIFT_FACTOR, -0.359375 * SHIFT_FACTOR }
SHADOW_SHIFT        = { 1 * SHIFT_FACTOR, 0.640625 * SHIFT_FACTOR }
WORKING_SHIFT       = { 0 * SHIFT_FACTOR, -0.5 * SHIFT_FACTOR }
STEEL_WORKING_SHIFT = { 0 * SHIFT_FACTOR, -1.125 * SHIFT_FACTOR }
FLOOR_GLOW_SHIFT    = { 0 * SHIFT_FACTOR, 1.640625 * SHIFT_FACTOR }
LIGHT_SHIFT         = { 0 * SHIFT_FACTOR, 0.75 * SHIFT_FACTOR }

if USE2x2 then
    COLLISION_BOX = { { -0.7, -0.7 }, { 0.7, 0.7 } }
    SELECTION_BOX = { { -0.8, -1.0 }, { 0.8, 1.0 } }
    REMNANTS = "small-remnants"
else
    COLLISION_BOX = { { -1.25, -1.25 }, { 1.25, 1.25 } }
    SELECTION_BOX = { { -1.5, -1.5 }, { 1.5, 1.5 } }
    REMNANTS = "medium-remnants"
end
