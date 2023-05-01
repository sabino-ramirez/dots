local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- go
  formatting.golines,

  -- typescript
  formatting.prettier,

  -- python
  formatting.black,
  lint.flake8,

  -- lua
  formatting.stylua
}

null_ls.setup {
  debug = true,
  sources = sources
}
