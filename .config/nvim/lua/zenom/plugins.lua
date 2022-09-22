local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'tpope/vim-markdown'
Plug 'nvim-lualine/lualine.nvim' -- statusline
Plug 'onsails/lspkind-nvim' -- vscode-like pictograms
Plug 'MunifTanjim/prettier.nvim'
Plug 'kyazdani42/nvim-web-devicons' -- File icons
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'glepnir/lspsaga.nvim'
Plug('catppuccin/nvim', {as = 'catppuccin'})
Plug 'kyazdani42/nvim-tree.lua'


-- Plug('neoclide/coc.nvim', {branch = 'release'})

vim.call('plug#end')

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


