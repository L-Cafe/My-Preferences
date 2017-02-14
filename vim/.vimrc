"encodings
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8
filetype off

"fixes
set nocompatible
filetype off
syntax enable
nnoremap Q <nop> "disables ex mode
let mapleader = ","
let g:mapleader = ","

"gui settings
set guifont=InconsolataForPowerline\ Nerd\ Font:h14
set guioptions=
set linespace=1
set termguicolors

"font
set cursorline

"indents
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab
set autoindent

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
set listchars=tab:⌁⌁,extends:>,precedes:<
set showbreak=…
set colorcolumn=80

"folding
set foldmethod=syntax
set nofoldenable

"vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'godlygeek/tabular'
Plugin 'L-Cafe/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-abolish'
"Plugin 'ujihisa/vimshell-ssh'
"Plugin 'terryma/vim-multiple-cursors'
Plugin '907th/vim-auto-save'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'wikitopian/hardmode'
Plugin 'sheerun/vim-polyglot'
"Plugin 'mbbill/undotree'
Plugin 'morhetz/gruvbox'
Plugin 'wting/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin on
filetype indent on

"Toggle dark and light
let hour = strftime("%H")
if 8 <= hour && hour < 18
  set background=light
else
  set background=dark
endif

"Key bindings
nnoremap <leader>t :ToggleBG<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
"nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>p :CommandT<CR>
nnoremap <leader>o :CommandTFlush<CR>
nmap <leader>w :w!<cr>

"Theme
colorscheme gruvbox
"Theme settings
let g:gruvbox_contrast_dark=hard
let g:gruvbox_contrast_light=hard
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?
call togglebg#map("") "fixes Solarized erratic behaviour

"markdown
let g:vim_markdown_math = 1

"Powerline (Airline)
set laststatus=2 "forces powerline
let g:airline_powerline_fonts = 1 "requires a powerline compatible font

"NERDTree
"autocmd vimenter * NERDTree "enable to automatically open NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"undotree
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

"autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

"hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
