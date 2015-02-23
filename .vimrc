se nonu
colorscheme elflord
syntax on
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4
set makeprg=python
map <F5> :w!<CR>:make %<CR>
map <F6> :copen<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>
map = <C-W>+
map - <C-W>-
set modeline
" autocmd VimEnter * NERDTree
let mapleader = ","
let g:pymode_python = 'python3'
nmap <leader>n :NERDTree<cr>
