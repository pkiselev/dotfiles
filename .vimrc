""""""""""""""""""""""
" Vundle and plugins
""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'https://github.com/klen/python-mode.git'
Plugin 'https://github.com/vim-scripts/taglist.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/tomasr/molokai'
Plugin 'https://github.com/tpope/vim-fugitive'
"Plugin 'https://github.com/Shougo/neocomplete.vim'
Plugin 'https://github.com/davidhalter/jedi-vim'
Plugin 'https://github.com/ervandew/supertab'
call vundle#end()            
filetype plugin indent on    

""""""""""""""""""""""
" Plugin specific settings
""""""""""""""""""""""
"let g:pymode_python = 'python'
""let g:pymode_rope = 0
"let g:pymode_rope_completion = 1
""let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_complete_on_dot = 1
let g:airline_theme='molokai'
let g:neocomplete#enable_at_startup = 0
let g:jedi#popup_on_dot = 1


""""""""""""""""""""""
" Hotkeys
""""""""""""""""""""""
let mapleader = ","
map <leader>1 :NERDTreeToggle<CR>
map <leader>2 :TlistToggle<CR>
set pastetoggle=<leader>3
map <leader>4 :w!<CR>:make %<CR>
map <leader>5 :copen<CR>
map = <C-W>+
map - <C-W>-

""""""""""""""""""""""
" Settings
""""""""""""""""""""""
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
    \ | wincmd p | diffthis
se nu
"colorscheme elflord
colorscheme molokai
syntax on
filetype on
au BufNewFile,BufRead *.j2 setf jinja
set expandtab
set autoindent
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
set mouse=a
set foldcolumn=3
" It will be good to see whever I use spaces or tabs
set listchars=eol:$,tab:>-
set list
set modeline
" autocmd VimEnter * NERDTree
" Always display statusline
set hlsearch
set isk+=- " It is useful for searching in route-maps to incl dash
set laststatus=2
"set completeopt=menu " To disable help popups in pymode
set ts=8 et sw=4 sts=4 " Will use python-like settings by default
set cursorline
set cursorcolumn
"set omnifunc=syntaxcomplete#Complete
set textwidth=79
set colorcolumn=80
set nowrap
set undofile
set undodir=~/.vim_undodir " Persistent undo
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorColumn   cterm=NONE ctermbg=234 ctermfg=NONE
