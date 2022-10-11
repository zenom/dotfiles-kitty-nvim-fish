local M = {}

M.ui = {
  theme_toggle = { "onenord", "nord" },
  theme = "onenord",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
