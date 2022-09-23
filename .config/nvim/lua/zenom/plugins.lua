local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- LSP, Treesitter, 
Plug 'tpope/vim-markdown'
Plug 'nvim-lualine/lualine.nvim' -- statusline
Plug 'onsails/lspkind-nvim' -- vscode-like pictograms
Plug 'MunifTanjim/prettier.nvim'
Plug 'kyazdani42/nvim-web-devicons' -- File icons
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'glepnir/lspsaga.nvim'
Plug('catppuccin/nvim', {as = 'catppuccin'})
Plug 'kyazdani42/nvim-tree.lua'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'kylechui/nvim-surround'
Plug 'terrortylor/nvim-comment'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug 'jose-elias-alvarez/null-ls.nvim'

-- testing
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'


-- Plug('neoclide/coc.nvim', {branch = 'release'})

vim.call('plug#end')

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

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

require('gitsigns').setup()
require('toggleterm').setup()
require("nvim-surround").setup()
require('nvim_comment').setup()
require('cmp').setup()
require'nvim-treesitter.configs'.setup{highlight={enable=true}}
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { 'ruby-lsp', 'elixir-ls' }
})

--fish,
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.erb_lint,
        require("null-ls").builtins.diagnostics.fish,
        require("null-ls").builtins.completion.spell,
    },
})
