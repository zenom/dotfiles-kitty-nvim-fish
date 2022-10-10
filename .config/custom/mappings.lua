local M = {}

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
M.disabled = {
  n = {
    ["<leader>n"] = "", -- disable the row number mapping
  }
}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["vv"] = { "<C-w>v", "split vertical" },
    ["ss"] = { "<C-w>s", "split horizontal" },
    [",,"] = { ":e# <CR>", "go back to previous file" },
    ["<leader>gs"] = { "<cmd>lua _lazygit_toggle()<CR>", "toggle lazygit"},

  },
}

M.nvimtree = {
  plugin = true,
  n = {
    ["<leader>nn"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree"},
  },
}

-- Toggle Term
-- M.toggleterm = {
--   plugin = true,
--   n = {
--     ["<leader>gs"] = { "<cmd> :ToggleTerm dir=git_dir direction=float<CR>", "toggle lazygit"},
--   }
-- }


-- more keybinds!
-- keymap.set('n', '<leader>ja', '<CMD>Telescope find_files cwd=app/assets/<CR>')
-- keymap.set('n', '<leader>jc', '<CMD>Telescope find_files cwd=app/controllers/<CR>')
-- keymap.set('n', '<leader>ji', '<CMD>Telescope find_files cwd=app/interactors/<CR>')
-- keymap.set('n', '<leader>jm', '<CMD>Telescope find_files cwd=app/models/<CR>')
-- keymap.set('n', '<leader>jv', '<CMD>Telescope find_files cwd=app/views/<CR>')
-- keymap.set('n', '<leader>jp', '<CMD>Telescope find_files cwd=app/policies/<CR>')
-- keymap.set('n', '<leader>jT', '<CMD>Telescope find_files cwd=test/<CR>')
-- keymap.set('n', '<leader>rt', ':TermExec size=20 direction=horizontal dir=. cmd="clear; bundle exec rails test -f -c %"<CR>') -- run tests in window
-- keymap.set('n', '<leader>dt', ':TermExec size=20 direction=horizontal dir=. cmd="clear; docker-compose exec  test bin/rails test %:~:."<CR>')
-- keymap.set('n', '<aeader>rA', ':AV<cr>') 
-- keymap.set('n', '<leader>ra', ':A<cr>')

return M
