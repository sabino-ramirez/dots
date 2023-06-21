local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local utils = require "core.utils"

local my_on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true

  utils.load_mappings("lspconfig", { buffer = bufnr })
end

local lspconfig = require "lspconfig"

-- local servers = { "html" }
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end

-- Without the loop, you would have to manually set up each LSP
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.jedi_language_server.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  cmd = { "jedi-language-server" },
  filetypes = { "python" },
  -- single_file_support = false,
  single_file_support = true,
}

-- lspconfig.pyright.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--
--   cmd = { "pyright-langserver", "--stdio" },
--   filetypes = { "python" },
--   -- root_dir = util.root_pattern("go.work", "go.mod", ".git"),
--   settings = {
--     python = {
--       autosearchPaths = true,
--       diagnosticMode = "workspace",
--       useLibraryCodeForTypes = true,
--     },
--   },
--
--   single_file_support = true,
-- }

lspconfig.gopls.setup {
  on_attach = my_on_attach,
  capabilities = capabilities,

  cmd = { "gopls", "serve" },
  filetypes = { "go", "gomod" },
  -- root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}
