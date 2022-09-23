local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- LSP, Treesitter, 
Plug 'tpope/vim-markdown'
Plug 'nvim-lualine/lualine.nvim' -- statusline
Plug 'MunifTanjim/prettier.nvim'
Plug 'kyazdani42/nvim-web-devicons' -- File icons
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'windwp/nvim-autopairs'
Plug('catppuccin/nvim', {as = 'catppuccin'})
Plug 'kyazdani42/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'kylechui/nvim-surround'
Plug 'terrortylor/nvim-comment'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug 'RRethy/nvim-treesitter-endwise'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'rcarriga/nvim-notify'
Plug 'mhanberg/elixir.nvim'

-- language
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

-- auto complete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

-- snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

-- easy configuration for lsp
Plug 'VonHeikemen/lsp-zero.nvim'

-- TO TEST
-- https://github.com/christoomey/vim-tmux-navigator
-- tmux-plugins/vim-tmux
-- tmux-plugins/vim-tmux-focus-events

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
    dotfiles = false,
  },
})

require('gitsigns').setup()
require('toggleterm').setup { 
  close_on_exit = true,
  float_opts = {
	border = "curved",
	width = 300,
  }
}

require("nvim-surround").setup()
require('nvim_comment').setup()
require'nvim-treesitter.configs'.setup {
	highlight={enable=true},
	endwise = {
		enable = true,
	},
	ensure_installed = {
	  'eex',
	  'elixir',
	  'erlang',
	  'heex',
	  'ruby'
	}
}
require('notify').setup()

vim.notify = require('notify') -- use notify plugin

local lsp = require('lsp-zero') -- setup the lsp configuration 

lsp.preset('recommended')
lsp.setup()

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

require("elixir").setup()
