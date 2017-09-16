"encodings
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8

"fixes
set nocompatible
let mapleader = ","
let g:mapleader = ","
let maplocalleader = "m"
let g:CtrlSpaceUseUnicode = 0

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
set hidden
set showtabline=0
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
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
"Plug 'godlygeek/tabular'
Plug 'L-Cafe/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
"Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-abolish'
"Plug 'ujihisa/vimshell-ssh'
"Plug 'terryma/vim-multiple-cursors'
Plug '907th/vim-auto-save'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'wikitopian/hardmode'
"Plug 'sheerun/vim-polyglot'
"Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'wting/rust.vim'
Plug 'parkr/vim-jekyll'
Plug 'freitass/todo.txt-vim'
Plug 'lervag/vimtex'
Plug 'mattn/emmet-vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors'

" All of your Plugs must be added before the following line
	call plug#end() " required
filetype plugin indent on
if !exists("g:syntax_on")
    syntax enable
endif

"Key bindings
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>p :CtrlP<CR>
""Other settings
"CtrlSpace
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
"autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
"Airline
let g:airline_powerline_fonts = 1
set laststatus=2
"CtrlP
let g:ctrlp_working_path_mode = 'c'

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
