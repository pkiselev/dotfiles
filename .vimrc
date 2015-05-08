se nu
colorscheme elflord
syntax on
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4
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
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
" Always display statusline
set laststatus=2
nmap <leader>n :NERDTree<cr>

