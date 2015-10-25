command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
    \ | wincmd p | diffthis
se nu
colorscheme elflord
syntax on
filetype on
au BufNewFile,BufRead *.j2 setf jinja
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4
" It will be good to see whever I use spaces or tabs
set listchars=eol:$,tab:>-
set list
map <F5> :w!<CR>:make %<CR>
map <F6> :copen<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>
set pastetoggle=<F4>
map = <C-W>+
map - <C-W>-
set modeline
" autocmd VimEnter * NERDTree
let mapleader = ","
let g:pymode_python = 'python3'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:airline_theme='wombat'
" Always display statusline
set laststatus=2
nmap <leader>n :NERDTree<cr>
