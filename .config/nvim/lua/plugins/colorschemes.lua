-- return {
--     { "rebelot/kanagawa.nvim", lazy = false },
--     {
--         "LazyVim/LazyVim",
--          opts = {
--             colorscheme = "kanagawa",
--          },
--      },
-- }
return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      background = { light = "frappe" },
      flavour = "frappe",
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        lsp_trouble = true,
      },
    }
  )
  vim.cmd.colorscheme "catppuccin"
  end,
}
