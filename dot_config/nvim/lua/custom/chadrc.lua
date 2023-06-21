---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest",
  theme_toggle = { "everforest", "everforest" },
  nvdash = {
    load_on_startup = true,
  },

  changed_themes = {
    everforest = {
      base_16 = {
        -- base00 = "#CED4DF",
        base02 = "#b7b7b8",
      },
      base_30 = {
        -- darker_black = "#c6cdda"
      },
    },
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
