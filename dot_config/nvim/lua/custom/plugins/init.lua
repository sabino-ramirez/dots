-- local customConfigs = require("custom.plugins.configs")

return {
  -- tmux + nvim navigation collab
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },

  -- default treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- mine
        "html",
        -- "css-lsp",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "yamlls",
        "go",
        "gosum",
        "gomod",
        "python"
      }
    }
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.plugins.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },

  -- ensure installed language servers
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "jedi-language-server",
        "typescript-language-server",
        "gopls"
      },
    },
  }
}
