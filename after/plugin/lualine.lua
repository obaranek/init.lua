
require('lualine').setup {
}

local lualine = require('lualine')

-- Define the configuration for the theme
local config = {
  options = {
    theme = 'gruvbox-material',
    section_separators = {'', ''},
    component_separators = {'', ''},
  },
}

-- Apply the configuration
lualine.setup(config)
