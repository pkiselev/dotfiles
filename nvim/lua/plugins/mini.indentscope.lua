return { 
  'echasnovski/mini.indentscope', 
  version = '*',
  opts = {
    -- symbol = "▏",
    symbol = "│",
    options = { try_as_border = true },
  },
  config = function()
    require('mini.indentscope').setup()
  end,
}
