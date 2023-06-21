-- local customConfigs = require("custom.plugins.configs")

return {
  -- tmux + nvim navigation collab
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- true zen
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require("true-zen").setup {
        modes = {
          ataraxis = {
            shade = "dark",
            -- backdrop = 0.2,
            minimum_writing_area = {
              width = 100,
              height = 65,
            },
            quit_untoggles = true,
            padding = {
              left = 20,
              right = 20,
              top = 8,
              bottom = 5,
            },
          },
        },
      }
    end,
  },

  -- disable which-key
  {
    "folke/which-key.nvim",
    enabled = false,
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
        "python",
      },
    },
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
        "gopls",
      },
    },
  },
}
