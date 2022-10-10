local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "c",
    "ruby",
    "eex",
    "heex",
    "elixir",
    "erlang",
    "fish",
    "json",
    "javascript",
    "markdown",
    "python",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "elixir-ls",
    "ruby-lsp",
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    dotfiles = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
