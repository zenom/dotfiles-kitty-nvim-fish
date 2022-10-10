local M = {}

M.ui = {
  theme_toggle = { "nightfox", "nord" },
  theme = "nord",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
