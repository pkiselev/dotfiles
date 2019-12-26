""""""""""""""""""""""
" Vundle and plugins
""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'https://github.com/tomasr/molokai'
Plug 'Valloric/YouCompleteMe'
Plug 'nvie/vim-flake8'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/rhysd/git-messenger.vim'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
"Plug 'https://github.com/klen/python-mode.git'
"Plug 'https://github.com/Shougo/neocomplete.vim'
"Plug 'https://github.com/davidhalter/jedi-vim'
"Plug 'https://github.com/vim-scripts/taglist.vim'
"Plug 'https://github.com/w0rp/ale'
"Plug 'kien/ctrlp.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'VundleVim/Vundle.vim'
"Plug 'https://github.com/benmills/vimux'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'https://github.com/majutsushi/tagbar'
"Plug 'https://github.com/tpope/vim-fugitive'
"Plug 'https://github.com/ervandew/supertab'
call plug#end()            
filetype plugin indent on    
filetype plugin on
source ~/.vim/cscope_maps.vim



""""""""""""""""""""""
" Plugin specific settings
""""""""""""""""""""""
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1 " show open buffers
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
"let g:ycm_use_clangd = 1
let g:loaded_youcompleteme = 0
let python_highlight_all=1
set rtp+=/usr/local/opt/fzf
let g:fzf_preview_command = 'bat'
"
"
"
"
"let g:ycm_register_as_syntastic_checker = 1 "default 1
"let g:Show_diagnostics_ui = 1 "default 1

""will put icons in Vim's gutter on lines that have a diagnostic set.
""Turning this off will also turn off the YcmErrorLine and YcmWarningLine
""highlighting
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_always_populate_location_list = 1 "default 0
"let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


"let g:ycm_complete_in_strings = 1 "default 1
"let g:ycm_collect_identifiers_from_tags_files = 1 "default 0
"let g:ycm_path_to_python_interpreter = '' "default ''


"let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
"let g:ycm_server_log_level = 'info' "default info


""""""""""""""""""""""
" Hotkeys
""""""""""""""""""""""
let mapleader = ","
map <leader>1 :NERDTreeToggle<CR>
map <leader>2 :TagbarToggle<CR>
map <leader>4 :w!<CR>:make %<CR>
map <leader>5 :copen<CR>
map = <C-W>+
map - <C-W>-
nnoremap <leader>jd :YcmCompleter GoTo<CR> 
nnoremap <leader>jt :YcmCompleter GetType<CR>
nnoremap <leader>jT :YcmCompleter GetTypeImprecise<CR>
nnoremap <leader>B :TagbarToggle<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>o :Files<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>ag :Ag<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
set noswapfile
set splitbelow
set splitright
set completeopt-=preview " I dont need annoying preview window with YCM
set termguicolors
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorColumn   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE



""""""""""""""""""""""
" Commands
""""""""""""""""""""""
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

" cscope and fzf (shameless copy from https://alex.dzyoba.com/blog/vim-revamp/
function! Cscope(option, query)
  let color = '{ x = $1; $1 = "s"; c = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  let opts = {
  \ 'source':  "cscope -dL" . a:option . " " . a:query . " | awk '" . color . "'",
  \ 'options': ['--ansi', '--prompt', '> ',
  \             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
  \             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
  \ 'down': '40%'
  \ }
  function! opts.sink(lines) 
    let data = split(a:lines)
    let file = split(data[0], ":")
    execute 'e ' . '+' . file[0] . ' ' . file[0]
  endfunction
  call fzf#run(fzf#wrap(opts))
endfunction

nnoremap <silent> <Leader>css :call Cscope('1', expand('<cword>'))<CR>
nnoremap <silent> <Leader>csr :call Cscope('3', expand('<cword>'))<CR>
