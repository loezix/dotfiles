require("loezix").setup({
  padding = 4,
  bindings = {
    { mod = { "alt", "ctrl" }, key = "Up",     fn = "grid_1_1" },
    { mod = { "alt", "ctrl" }, key = "Left",   fn = "grid_2_1" },
    { mod = { "alt", "ctrl" }, key = "Right",  fn = "grid_2_2" },

    { mod = { "alt", "ctrl" }, key = "Z",      fn = "grid_3_1_2" },
    { mod = { "alt", "ctrl" }, key = "A",      fn = "grid_6_5" },
    { mod = { "alt", "ctrl" }, key = "S",      fn = "grid_6_6" },
    { mod = { "alt", "ctrl" }, key = "D",      fn = "grid_4_4" },
    { mod = { "alt", "ctrl" }, key = "Return", fn = "wide_focus" },
    { mod = { "alt", "ctrl" }, key = "X",      fn = "grid_8_2_6" },

    { mod = { "alt", "ctrl" }, key = "C",      fn = "centralize" },
  }
})
