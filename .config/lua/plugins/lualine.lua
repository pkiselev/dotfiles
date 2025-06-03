-- Customising background of lualine to match catppucin-frappe
local t = require('lualine.themes.catppuccin')
t.normal.c.bg = '#303446'

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
      require('lualine').setup(
      {
        options = {
          theme = t,
        }
      }
      )
    end,
}
