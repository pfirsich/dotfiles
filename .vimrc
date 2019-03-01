set nocompatible " Set compatibility to Vim only. Do this first!

call plug#begin()
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set nowrap " don't wrap lines
set scrolloff=5 " Display 5 lines above/below the cursor when scrolling with a mouse.
set backspace=indent,eol,start " allow backspacing over everything
set autoindent " always set autoindent on 
set number " line numbers
set tabstop=4 " a tab is 4 spaces
set expandtab " replace tabs with spaces
set softtabstop=4 " a soft tab is 4 spaces
set shiftwidth=4 " number of spaces for autoindent
set showmatch " show matching parenthesis
set ignorecase " ignore case when searching
set smartcase " ignore case if pattern is lowercase, case-sensitive otherwise
set smarttab " insert tabs at the start of a line according to shiftwidth not tabstop
set hlsearch " highlight search terms
set incsearch " incremental search
set history=1000 " longer history
set title " change the terminals title
set visualbell " don't beep
set noerrorbells " don't beep
set mouse=a " enable mouse scrolling

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

set ttyfast " Speed up scrolling in Vim

set showmode
set showcmd
" set cursorline
set wildmenu
set colorcolumn=100

filetype indent on

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:>-,extends:>,precedes:<,nbsp:·,trail:~
