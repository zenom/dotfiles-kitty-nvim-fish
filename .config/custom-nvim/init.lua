local autocmd = vim.api.nvim_create_autocmd
local g = vim.g

g.mapleader = ","

-- ################################
-- lazygit window config
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  hidden = true ,
  direction = "float",
  dir = "git_dir",
  float_opts = {
    border = "double",
  }
})

function _lazygit_toggle()
  lazygit:toggle()
end

-- END CUSTOM METHODS

-- disable some default ones

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
