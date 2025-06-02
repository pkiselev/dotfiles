local opt = vim.opt

opt.number = true -- show line numbers
opt.relativenumber = true -- show relative numbers by default

opt.showmatch = true -- show matching brackets

-- opt.smartindent = true -- use c-like indents when no indentexpr is used
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 2 -- use 2 spaces when inserting tab
opt.tabstop = 2 -- show tabs as 2 spaces

opt.splitright = true -- vsplit to right of current window
opt.splitbelow = true -- hsplit to bottom of current window

opt.ignorecase = true -- ignore case in searches ... 
opt.smartcase = true -- ... unless we used mixed case

opt.termguicolors = true -- allow true colors

opt.cursorline = true -- highlight cursor column
opt.cursorcolumn = true -- highlight cursor line
opt.colorcolumn = "80" -- draw vertical border on column 80

opt.list = true -- show non-printable characters
opt.listchars = { eol ='$', tab = '>-' } -- set symbols for EOL and Tabs

opt.hlsearch = true -- highlight search results
opt.incsearch = true -- highlight search result as we are typing

opt.swapfile = false -- disable swap files
opt.undofile = true -- enable persistent undo/redo

opt.mouse = "a" -- enable mouse mode
