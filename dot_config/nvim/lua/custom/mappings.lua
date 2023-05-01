local M = {}

M.general = {
  -- save
  n = {
    ["<leader>w"] = { "<cmd> w <CR>", "save file" },
    ["<leader>q"] = { "<cmd> q <CR>", "exit" },
    ["<leader>wq"] = { "<cmd> wq <CR>", "save file and exit" },

    -- override defaults for vim-tmux-navigation
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}

-- M.lspconfig = {
--   plugin = true,
--
--   -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
--
--   n = {
--     ["gD"] = {
--       function()
--         vim.lsp.buf.declaration()
--       end,
--       "lsp declaration",
--     },
--
--     ["gd"] = {
--       function()
--         vim.lsp.buf.definition()
--       end,
--       "lsp definition",
--     },
--
--     ["K"] = {
--       function()
--         vim.lsp.buf.hover()
--       end,
--       "lsp hover",
--     },
--
--     ["gi"] = {
--       function()
--         vim.lsp.buf.implementation()
--       end,
--       "lsp implementation",
--     },
--
--     ["<leader>ls"] = {
--       function()
--         vim.lsp.buf.signature_help()
--       end,
--       "lsp signature_help",
--     },
--
--     ["<leader>D"] = {
--       function()
--         vim.lsp.buf.type_definition()
--       end,
--       "lsp definition type",
--     },
--
--     ["<leader>ra"] = {
--       function()
--         require("nvchad_ui.renamer").open()
--       end,
--       "lsp rename",
--     },
--
--     ["<leader>ca"] = {
--       function()
--         vim.lsp.buf.code_action()
--       end,
--       "lsp code_action",
--     },
--
--     ["gr"] = {
--       function()
--         vim.lsp.buf.references()
--       end,
--       "lsp references",
--     },
--
--     ["<leader>f"] = {
--       function()
--         vim.diagnostic.open_float { border = "rounded" }
--       end,
--       "floating diagnostic",
--     },
--
--     ["[d"] = {
--       function()
--         vim.diagnostic.goto_prev()
--       end,
--       "goto prev",
--     },
--
--     ["]d"] = {
--       function()
--         vim.diagnostic.goto_next()
--       end,
--       "goto_next",
--     },
--
--     ["<leader>q"] = {
--       function()
--         vim.diagnostic.setloclist()
--       end,
--       "diagnostic setloclist",
--     },
--
--     ["<leader>fm"] = {
--       function()
--         vim.lsp.buf.format { async = true }
--       end,
--       "lsp formatting",
--     },
--
--     ["<leader>wa"] = {
--       function()
--         vim.lsp.buf.add_workspace_folder()
--       end,
--       "add workspace folder",
--     },
--
--     ["<leader>wr"] = {
--       function()
--         vim.lsp.buf.remove_workspace_folder()
--       end,
--       "remove workspace folder",
--     },
--
--     ["<leader>wl"] = {
--       function()
--         print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--       end,
--       "list workspace folders",
--     },
--   },
-- }

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    -- ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },
}

return M
