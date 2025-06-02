-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap

-- Space as Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- map jk as ESC
vim.keymap.set("i", "jk", "<ESC>", { silent = true })

-- map control-hjkl keys to pane shifts in normal mode
map("n", "<C-H>", "<C-w><C-h>", { noremap = true })
map("n", "<C-J>", "<C-w><C-j>", { noremap = true })
map("n", "<C-K>", "<C-w><C-k>", { noremap = true })
map("n", "<C-L>", "<C-w><C-l>", { noremap = true })

-- disabling arrow keys in all modes
map("c", "<Left>", "<nop>", { noremap = true })
map("i", "<Left>", "<nop>", { noremap = true })
map("n", "<Left>", "<nop>", { noremap = true })
map("c", "<Right>", "<nop>", { noremap = true })
map("i", "<Right>", "<nop>", { noremap = true })
map("n", "<Right>", "<nop>", { noremap = true })
map("c", "<Down>", "<nop>", { noremap = true })
map("i", "<Down>", "<nop>", { noremap = true })
map("n", "<Down>", "<nop>", { noremap = true })
map("c", "<Up>", "<nop>", { noremap = true })
map("i", "<Up>", "<nop>", { noremap = true })
map("n", "<Up>", "<nop>", { noremap = true })
