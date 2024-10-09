local M = {}

local function setup_bindings(bindings)
  local hotkeys = hs.hotkey
  local tiling = require("loezix.wm.tiling")
  for _, binding in pairs(bindings) do
    hotkeys.bind(binding.mod, binding.key, tiling[binding.fn])
  end
end

function M.setup(config)
  require("loezix.wm.tiling").setup(config)
  setup_bindings(config.bindings)
end

return M
