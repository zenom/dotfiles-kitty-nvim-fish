local M = {}


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
    ["<leader>gs"] = { "<cmd> ToggleTerm size=40 git_dir direction=float cmd='lazygit'<CR>", ""},
  },
}

M.nvimtree = {
  plugin = true,
  n = {
    ["<leader>nn"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree"},
  },
}

return M
