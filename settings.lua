data:extend({
  {
    type = "string-setting",
    name = "IR3-burner-furnace-size",
    setting_type = "startup",
    allowed_values = { "2x2", "3x3" },
    default_value = "2x2",
    order = "a"
  },
  {
    type = "bool-setting",
    name = "IR3-enable-gas-furnace",
    setting_type = "startup",
    default_value = false,
    order = "b"
  }
})
