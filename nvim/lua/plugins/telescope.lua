return 
{
  "nvim-telescope/telescope.nvim",
  dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
  lazy = true,
  keys = {
    {"<leader>o", "<cmd>Telescope find_files<CR>"},
    {"<leader>b", "<cmd>Telescope buffers<CR>"},
    {"<leader>t", "<cmd>Telescope tags<CR>"},
--    {"<leader>l", bultin.current_buffer_fuzzy_find},
    {"<leader>m", "<cmd>Telescope marks<CR>"},
  },
}
