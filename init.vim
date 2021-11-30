call plug#begin('~/vimfiles/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'rktjmp/lush.nvim'
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'artanikin/vim-synthwave84'
    Plug 'preservim/nerdtree'
    " Plug 'Valloric/YouCompleteMe'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'easymotion/vim-easymotion'
call plug#end()

" syntax
syntax on

" history : how many lines of history VIM has to remember
set history=2000 

" filetype
filetype on 
" Enable filetype plugins
filetype plugin on
filetype indent on


" base
set nocompatible                " don't bother with vi compatibility
set autoread                    " reload files when changed on disk, i.e. via `git checkout`
set magic                       " For regular expressions turn magic on
set title                       " change the terminal's title
set nobackup                    " do not keep a backup file

set errorbells
set novisualbell

" show location
" set cursorcolumn
" set cursorline

set smartindent
set tabstop=4
set softtabstop=4 
set expandtab                   " change tab to spaces
set smarttab
set shiftround
set shiftwidth=4

" movement
set scrolloff=3                 " keep  lines when scrolling

" show
set ruler                       " show the current row and column
set number                      " show line numbers
set relativenumber
set nowrap
set showcmd                     " display incomplete commands
set showmode                    " display current modes
set showmatch                   " jump to matches when entering parentheses
set matchtime=2                 " tenths of a second to show the matching parenthesis


" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B

" Note CTRL-I is the same as <Tab>
" to solve the problem that backspace cannot delete things
set backspace=indent,eol,start
set smartcase
" Highlight search results when searching
set hlsearch
set incsearch

set t_Co=256
if has("termguicolors")
    set termguicolors
endif

" set guifont=Consolas:h13:cANSI:qDRAFT
" colorscheme synthwave84

" highlight Search guibg=peru

" run command under current dir
set autochdir

set sidescroll=1

" Packer 
" lua require('plugins')

set background=dark
colorscheme gruvbox

let mapleader = ' '
