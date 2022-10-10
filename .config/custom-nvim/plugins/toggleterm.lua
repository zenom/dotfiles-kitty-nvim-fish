require("toggleterm").setup {}

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

-- set the keymap
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
