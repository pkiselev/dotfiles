return {
  {
      "alexghergh/nvim-tmux-navigation",
      keys = { 
        { "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>", desc = "Got to the left pane" },
        { "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>", desc = "Got to the down pane" },
        { "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>", desc = "Got to the up pane" },
        { "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>", desc = "Got to the right pane" },
      },
      opts = {
          -- add any options here
      },
      lazy = false,
  }
}
