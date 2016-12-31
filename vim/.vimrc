"encodings
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8
filetype plugin indent off

"fixes
set nocompatible
filetype off
syntax enable
nnoremap Q <nop> "disables ex mode

"gui settings
set guifont=InconsolataForPowerline\ Nerd\ Font:h14
set guioptions=
set linespace=1

"font
set cursorline

"indents
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab
set autoindent
filetype plugin indent off

"wrapping
set wrap linebreak nolist

"features
set number
set ruler
set ignorecase
set smartcase
set incsearch
set noswapfile

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"invisibles
set list
set listchars=eol:⤶,tab:⌁⌁,extends:>,precedes:<
set showbreak=…

"folding
set foldmethod=syntax
set nofoldenable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'L-Cafe/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/Gundo'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'vim-scripts/vimshell-ssh'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'rakr/vim-two-firewatch'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-scripts/CycleColor'
Plugin 'terryma/vim-multiple-cursors'
Plugin '907th/vim-auto-save'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end() " required

"Toggle dark and light
let hour = strftime("%H")
if 8 <= hour && hour < 18
  set background=light
else
  set background=dark
endif

"Key bindings
map ,t :ToggleBG

"Theme
colorscheme solarized
let g:solarized_contrast="normal"    "default value is normal
let g:solarized_bold=1
call togglebg#map("") "fixes Solarized erratic behaviour

"Powerline (Airline)
set laststatus=2 "forces powerline
let g:airline_powerline_fonts = 1 "requires a powerline compatible font

"NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

"markdown
let g:vim_markdown_math = 1
