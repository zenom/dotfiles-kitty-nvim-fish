local autocmd = vim.api.nvim_create_autocmd
local g = vim.g

g.mapleader = ","

-- disable some default ones

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
