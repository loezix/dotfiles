local M = {}
local padding = 0

function M.setup(config)
  padding = config.padding
end

local function orElse(v, d)
  if v == nil then return d end
  return v
end

local function appy_padding(wf)
  wf.x = wf.x + padding
  wf.y = wf.y + 24 + padding
  wf.w = wf.w - padding
  wf.h = wf.h - 24 - padding
  return wf
end

local function window()
  local win = hs.window.focusedWindow()
  return win, win:frame(), win:screen():frame()
end

local function transform_window_frame(frame, use_padding)
  local win = table.unpack { window() }
  if use_padding then appy_padding(frame) end
  win:setFrame(frame)
end

local function place_window(grid, pos, span)
  local _, wf, sf = table.unpack { window() }
  local _grid = orElse(grid, { r = 1, c = 1 })
  local _pos = orElse(pos, { x = 1, y = 1 })
  local _span = orElse(span, { w = 0, h = 0 })


  wf.x = sf.w / _grid.c * (_pos.x - 1)
  wf.y = sf.h / _grid.r * (_pos.y - 1)
  wf.w = sf.w / _grid.c * (_span.w + 1)
  wf.h = sf.h / _grid.r * (_span.h + 1)

  transform_window_frame(wf, true)
end

function M.grid_1_1()
  place_window()
end

-- Halves
function M.grid_2_1()
  place_window({ r = 1, c = 2 }, { x = 1, y = 1 })
end

function M.grid_2_2()
  place_window({ r = 1, c = 2 }, { x = 2, y = 1 })
end

-- Thirds
function M.grid_3_1()
  place_window({ r = 1, c = 3 }, { x = 1, y = 1 })
end

function M.grid_3_1_2()
  place_window({ r = 1, c = 3 }, { x = 1, y = 1 }, { w = 1, h = 0 })
end

function M.grid_3_2()
  place_window({ r = 1, c = 3 }, { x = 2, y = 1 })
end

function M.grid_3_3()
  place_window({ r = 1, c = 3 }, { x = 3, y = 1 })
end

-- Fourths
function M.grid_4_1()
  place_window({ r = 1, c = 4 }, { x = 1, y = 1 })
end

function M.grid_4_1_3()
  place_window({ r = 1, c = 4 }, { x = 1, y = 1 }, { w = 2, h = 0 })
end

function M.grid_4_2()
  place_window({ r = 1, c = 4 }, { x = 2, y = 1 })
end

function M.grid_4_3()
  place_window({ r = 1, c = 4 }, { x = 3, y = 1 })
end

function M.grid_4_4()
  place_window({ r = 1, c = 4 }, { x = 4, y = 1 })
end

-- Sixths
function M.grid_6_1()
  place_window({ r = 1, c = 6 }, { x = 1, y = 1 })
end

function M.grid_6_2()
  place_window({ r = 1, c = 6 }, { x = 2, y = 1 })
end

function M.grid_6_2_4()
  place_window({ r = 1, c = 6 }, { x = 2, y = 1 }, { w = 3, h = 1 })
end

function M.grid_6_3()
  place_window({ r = 1, c = 6 }, { x = 3, y = 1 })
end

function M.grid_6_4()
  place_window({ r = 1, c = 6 }, { x = 4, y = 1 })
end

function M.grid_6_5()
  place_window({ r = 1, c = 6 }, { x = 5, y = 1 })
end

function M.grid_6_5_2()
  place_window({ r = 1, c = 6 }, { x = 5, y = 1 }, { w = 1, h = 0 })
end

function M.grid_6_6()
  place_window({ r = 1, c = 6 }, { x = 6, y = 1 })
end

-- Eigths
function M.grid_8_1()
  place_window({ r = 1, c = 8 }, { x = 1, y = 1 })
end

function M.grid_8_2()
  place_window({ r = 1, c = 8 }, { x = 2, y = 1 })
end

function M.grid_8_2_6()
  place_window({ r = 1, c = 8 }, { x = 2, y = 1 }, { w = 5, h = 0 })
end

function M.grid_8_3()
  place_window({ r = 1, c = 8 }, { x = 3, y = 1 })
end

function M.grid_8_4()
  place_window({ r = 1, c = 8 }, { x = 4, y = 1 })
end

function M.grid_8_5()
  place_window({ r = 1, c = 8 }, { x = 5, y = 1 })
end

function M.grid_8_6()
  place_window({ r = 1, c = 8 }, { x = 6, y = 1 })
end

function M.grid_8_7()
  place_window({ r = 1, c = 8 }, { x = 7, y = 1 })
end

function M.grid_8_8()
  place_window({ r = 1, c = 8 }, { x = 8, y = 1 })
end

function M.centralize()
  local _, wf, sf = table.unpack { window() }
  wf.w = (wf.w > sf.w and sf.w or wf.w)
  wf.h = (wf.h > sf.h and sf.h or wf.h)
  wf.x = (sf.w - wf.w) / 2
  wf.y = (sf.h - wf.h) / 2
  transform_window_frame(wf, false)
end

function M.wide_focus()
  local _, wf, sf = table.unpack { window() }
  wf.w = sf.w - sf.w * 0.05
  wf.h = sf.h - sf.h * (0.05 * 1.19)
  wf.x = (sf.w - wf.w) / 2
  wf.y = (sf.h - wf.h) / 2
  transform_window_frame(wf, false)
end

return M
