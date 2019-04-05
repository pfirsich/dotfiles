set nocompatible " Set compatibility to Vim only. Do this first!

" Plugins
call plug#begin()
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-sensible'
Plug 'albfan/whitespace.vim'
Plug 'tpope/vim-sleuth'
call plug#end()

" Lightline
let g:lightline = {
    \ 'active': {
    \   'right': [ [ 'lineinfo' ], [ 'linecount' ],
    \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
    \ },
    \ 'component': {
    \   'linecount': "%{line('$')}",
    \ },
\ }

""" Colors
syntax on
set background=dark

if has("gui_running")
    if has("gui_win32")
        set guifont=Fantasque_Sans_Mono:h12:cANSI:qDRAFT
    endif
    colorscheme molokai
else
    colorscheme default
endif

""" Indentation
set softtabstop=4 " a soft tab is 4 spaces
set tabstop=4 " a tab is 4 spaces
set shiftwidth=4 " number of spaces for autoindent
set smarttab " insert tabs at the start of a line according to shiftwidth not tabstop
set expandtab " replace tabs with spaces
set autoindent " always set autoindent on
filetype indent on

""" UI
set nowrap " don't wrap lines
set ttyfast " Speed up scrolling in Vim
set showmode
set showcmd
" set cursorline
set wildmenu
set colorcolumn=100
set list
set listchars=tab:>-,extends:>,precedes:<,nbsp:�,trail:~
set scrolloff=5 " Display 5 lines above/below the cursor when scrolling with a mouse.
set number " line numbers
set showmatch " show matching parenthesis
set matchpairs+=<:>
set history=1000 " longer history
set mouse=a " enable mouse scrolling
set laststatus=2 " Always show status line
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

""" Other
set hlsearch " highlight search terms
set incsearch " incremental search
set ignorecase " ignore case when searching
set smartcase " ignore case if pattern is lowercase, case-sensitive otherwise

set backspace=indent,eol,start " allow backspacing over everything
set title " change the terminals title
set visualbell " don't beep
set noerrorbells " don't beep

""" Mappings
" Mappings to move lines up/down using alt+j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

imap <C-H> <Home>
imap <C-N> <End>
nmap <C-H> <Home>
nmap <C-N> <Home>

" Mapping for exiting/entering insert mode
inoremap jk <esc>
inoremap kj <esc>
vnoremap jk <esc>
vnoremap kj <esc>

map <f9> :make<CR>

nnoremap <C-L> :nohl<CR><C-L>

""" Leader Mappings
let mapleader=" "

nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

nnoremap <silent> <leader>l :set rnu!<CR>

nnoremap <silent> <leader>v <C-w>v<C-w>l
nnoremap <silent> <leader>s <C-w>s<C-w>j
