""""""""""""""""""""""
" Vundle and plugins
""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'https://github.com/klen/python-mode.git'
Plugin 'https://github.com/vim-scripts/taglist.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            
filetype plugin indent on    

""""""""""""""""""""""
" Plugin specific settings
""""""""""""""""""""""
let g:pymode_python = 'python3'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:airline_theme='wombat'

""""""""""""""""""""""
" Hotkeys
""""""""""""""""""""""
let mapleader = ","
nmap <leader>1 :NERDTree<cr>
map <leader>2 :NERDTreeToggle<CR>
map <leader>3 :TlistToggle<CR>
set pastetoggle=<leader>4
map <leader>5 :w!<CR>:make %<CR>
map <leader>6 :copen<CR>
map = <C-W>+
map - <C-W>-

""""""""""""""""""""""
" Settings
""""""""""""""""""""""
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
    \ | wincmd p | diffthis
se nu
colorscheme elflord
syntax on
filetype on
au BufNewFile,BufRead *.j2 setf jinja
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
" It will be good to see whever I use spaces or tabs
set listchars=eol:$,tab:>-
set list
set modeline
" autocmd VimEnter * NERDTree
" Always display statusline
set laststatus=2
