""""""""""""""""""""""
" Vundle and plugins
""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'https://github.com/vim-scripts/taglist.vim'
Plugin 'https://github.com/majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/tomasr/molokai'
Plugin 'https://github.com/tpope/vim-fugitive'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/ervandew/supertab'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
"Plugin 'https://github.com/klen/python-mode.git'
"Plugin 'https://github.com/Shougo/neocomplete.vim'
"Plugin 'https://github.com/davidhalter/jedi-vim'
call vundle#end()            
filetype plugin indent on    
filetype plugin on


""""""""""""""""""""""
" Plugin specific settings
""""""""""""""""""""""
let g:airline_theme='molokai'
let python_highlight_all=1
let g:ctrlp_split_window = 0
"let g:pymode_python = 'python'
""let g:pymode_rope = 0
"let g:pymode_rope_completion = 1
""let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_complete_on_dot = 1
"let g:neocomplete#enable_at_startup = 0
"let g:jedi#popup_on_dot = 1


""""""""""""""""""""""
" Hotkeys
""""""""""""""""""""""
let mapleader = ","
map <leader>1 :NERDTreeToggle<CR>
map <leader>2 :TagbarToggle<CR>
set pastetoggle=<leader>3
map <leader>4 :w!<CR>:make %<CR>
map <leader>5 :copen<CR>
map = <C-W>+
map - <C-W>-
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>b :TagbarToggle<cr>

""""""""""""""""""""""
" Settings
""""""""""""""""""""""
colorscheme molokai
syntax on
filetype on

set ts=8 et sw=4 sts=4 " Will use python-like settings by default
set number relativenumber
set textwidth=79
set colorcolumn=80
set nowrap
set undofile
set undodir=~/.vim_undodir " Persistent undo
set autoindent
set mouse=a
set foldcolumn=3
set foldmethod=indent
set foldlevel=99
set listchars=eol:$,tab:>- " It will be good to see whever I use spaces or tabs
set list
set modeline
set hlsearch
set incsearch
set isk+=- " It is useful for searching in route-maps to incl dash
set laststatus=2
set cursorline
set cursorcolumn
" autocmd VimEnter * NERDTree
"set omnifunc=syntaxcomplete#Complete
"set completeopt=menu " To disable help popups in pymode
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorColumn   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
