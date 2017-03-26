"encodings
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8

"fixes
set nocompatible
let mapleader = ","
let g:mapleader = ","
let maplocalleader = "m"

"font
set cursorline

"indents
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab
set autoindent
set cindent

"wrapping
set wrap linebreak nolist

"features
set number
set ruler
set ignorecase
set smartcase
set incsearch
set noswapfile
autocmd BufEnter * silent! lcd %:p:h

"invisibles
set list
set showbreak=…
set listchars=trail:□,tab:→\
set colorcolumn=80

"folding
set foldmethod=syntax
set nofoldenable

"vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'godlygeek/tabular'
Plugin 'L-Cafe/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
"Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-abolish'
"Plugin 'ujihisa/vimshell-ssh'
"Plugin 'terryma/vim-multiple-cursors'
Plugin '907th/vim-auto-save'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'wikitopian/hardmode'
"Plugin 'sheerun/vim-polyglot'
"Plugin 'mbbill/undotree'
Plugin 'morhetz/gruvbox'
Plugin 'wting/rust.vim'
Plugin 'parkr/vim-jekyll'
Plugin 'freitass/todo.txt-vim'
Plugin 'lervag/vimtex'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on
if !exists("g:syntax_on")
    syntax enable
endif

"Key bindings
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>p :CtrlP<CR>
""Other settings
"autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
"Airline
let g:airline_powerline_fonts = 1
set laststatus=2