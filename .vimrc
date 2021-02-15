" Plugins
call plug#begin()
"Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'nvie/vim-flake8'
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-dispatch/'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
"Plug 'davidhalter/jedi-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'plasticboy/vim-markdown'
Plug 'benmills/vimux'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'unblevable/quick-scope'
Plug 'jlfwong/vim-mercenary'
Plug 'mhinz/vim-signify'
call plug#end()            
filetype plugin indent on    
filetype plugin on
"source ~/.vim/cscope_maps.vim
source $LOCAL_ADMIN_SCRIPTS/master.vimrc


" Plugin specific settings
let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = "[%linter%]%[ code]% %s"
"let g:deoplete#enable_at_startup = 1
set updatetime=100 " Faster reaction for vim-signify
"let g:airline_theme='gruvbox'
let g:airline_theme='nord'
let g:floaterm_autoclose=1
let g:airline_section_y="" " Disable filetype
let g:airline_section_warning=""
let g:airline#extensions#tabline#enabled = 1 " show open buffers
let g:tagbar_foldlevel = 0
set rtp+=/usr/local/opt/fzf
let g:fzf_preview_command = 'bat'
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1
"let b:ale_linters = {'python': ['flake8', 'pylint', 'pyls']}
"let g:ale_fixers = {'python': ['yapf', 'autopep8']}
"let g:ale_completion_enabled = 1
let g:mkdp_browser = 'safari'

" Respect colorscheme for GitMessenger
hi link gitmessengerPopupNormal Pmenu
hi gitmessengerPopupNormal term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
"hi gitmessengerEndOfBuffer term=None guifg=None guibg=10 ctermfg=None ctermbg=None

" Tons of configs for CoC
"source $HOME/.config/nvim/plug-config/coc.vim



" Keys
let mapleader = " "
"map <leader>1 :NERDTreeToggle<CR>
map <leader>2 :TagbarToggle<CR>
map <leader>4 :w!<CR>:make %<CR>
map <leader>5 :copen<CR>
"map = <C-W>+
"map - <C-W>-

nnoremap <leader>B :TagbarToggle<cr>
nnoremap <leader>b :Buffers<cr>
"nnoremap <leader>o :Files<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>rg :Rg<CR>

cnoremap <Left> <nop>
cnoremap <Right> <nop>
cnoremap <Up> <nop>
cnoremap <Left> <nop>

inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Left> <nop>

noremap <Down> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jk <Esc>
"inoremap <Esc> <nop>

:imap <C-h> <C-o>h
:imap <C-j> <C-o>j
:imap <C-k> <C-o>k
:imap <C-l> <C-o>l

:tnoremap et <C-\><C-n>

" Plugin-specific keys
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
nmap <silent> <leader>t  :FloatermNew<cr>


""""""""""""""""""""""
" Settings
""""""""""""""""""""""
set t_Co=256
"colorscheme gruvbox
colorscheme nord
set bg=dark " Specifically for gruvbox I prefer dark bg
syntax on
filetype on
set tags+=tags;/
set ts=2 et sw=2 sts=2 tw=79 " Will use python-like settings by default
set autoindent
set colorcolumn=80
set backspace=indent,eol,start
set number relativenumber
set nowrap
set undofile
set undodir=~/.vim_undodir " Persistent undo
set mouse=a
set foldcolumn=0 "Dont want too wide margins
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
set noswapfile
set splitbelow
set splitright
set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum" " Fixing some weird ssh term-color problem
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum" " Fixing some weird ssh term-color problem
hi CursorColumn   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE



" Commands
"command! -bang -nargs=? -complete=dir Files
 "\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

"command! -bang -nargs=* Ag
  "\ call fzf#vim#ag(<q-args>,
  "\                 <bang>0 ? fzf#vim#with_preview('up:60%')
  "\                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  "\                 <bang>0)

"command! -bang -nargs=* Rg
  "\ call fzf#vim#grep(
  "\   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  "\   <bang>0 ? fzf#vim#with_preview('up:60%')
  "\           : fzf#vim#with_preview('right:50%:hidden', '?'),
  "\   <bang>0)


nnoremap <silent> <Leader>css :call Cscope('1', expand('<cword>'))<CR>
nnoremap <silent> <Leader>csr :call Cscope('3', expand('<cword>'))<CR>
