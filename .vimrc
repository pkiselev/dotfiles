" Plugins
call plug#begin()
"Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'nvie/vim-flake8'
Plug 'junegunn/fzf.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'plasticboy/vim-markdown'
Plug 'benmills/vimux'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
call plug#end()            
filetype plugin indent on    
filetype plugin on
source ~/.vim/cscope_maps.vim


" Plugin specific settings
let g:airline_theme='gruvbox'
let g:airline_section_y="" " Disable filetype
let g:airline_section_warning=""
let g:airline#extensions#tabline#enabled = 1 " show open buffers
let g:tagbar_foldlevel = 0
set rtp+=/usr/local/opt/fzf
let g:fzf_preview_command = 'bat'
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1
let b:ale_linters = ['flake8', 'pylint', 'pyls']
let b:ale_fixers = ['autopep8', 'yapf']
let g:ale_completion_enabled = 1
let g:mkdp_browser = 'safari'



" Keys
let mapleader = " "
" let g:deoplete#enable_at_startup = 1
"map <leader>1 :NERDTreeToggle<CR>
map <leader>2 :TagbarToggle<CR>
map <leader>4 :w!<CR>:make %<CR>
map <leader>5 :copen<CR>
"map = <C-W>+
"map - <C-W>-

nnoremap <leader>B :TagbarToggle<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>o :Files<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>g :Ag<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap jk <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:tnoremap et <C-\><C-n>

" Plugin-specific keys
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>gr :ALEFindReferences<CR>
nnoremap <leader>gs :ALESymbolSearch <cword> <CR>


""""""""""""""""""""""
" Settings
""""""""""""""""""""""
colorscheme gruvbox
set bg=dark " Specifically for gruvbox I prefer dark bg
syntax on
filetype on
set tags+=tags;/
set ts=8 et sw=4 sts=4 " Will use python-like settings by default
set number relativenumber
set textwidth=79
set colorcolumn=80
set nowrap
set undofile
set undodir=~/.vim_undodir " Persistent undo
set autoindent
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
"set cursorcolumn
set noswapfile
set splitbelow
set splitright
set termguicolors
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorColumn   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE



" Commands
command! -bang -nargs=? -complete=dir Files
 \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

 "cscope and fzf (shameless copy from https://alex.dzyoba.com/blog/vim-revamp/
"function! Cscope(option, query)
  "let color = '{ x = $1; $1 = "s"; c = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  "let opts = {
  "\ 'source':  "cscope -dL" . a:option . " " . a:query . " | awk '" . color . "'",
  "\ 'options': ['--ansi', '--prompt', '> ',
  "\             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
  "\             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
  "\ 'down': '40%'
  "\ }
  "function! opts.sink(lines) 
    "let data = split(a:lines)
    "let file = split(data[0], ":")
    "execute 'e ' . '+' . file[0] . ' ' . file[0]
  "endfunction
  "call fzf#run(fzf#wrap(opts))
"endfunction

nnoremap <silent> <Leader>css :call Cscope('1', expand('<cword>'))<CR>
nnoremap <silent> <Leader>csr :call Cscope('3', expand('<cword>'))<CR>
