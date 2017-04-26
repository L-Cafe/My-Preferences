"Visual
set linespace=1
set termguicolors
"set guifont=Inconsolata\ for\ Powerline\ Nerd\ Font\ Complete:h14
set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h13
set guioptions=
"Theme
colorscheme gruvbox
AirlineTheme gruvbox
"Theme settings
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
"Toggle dark and light
let hour = strftime("%H")
if 8 <= hour && hour < 20
	set background=light
else
	set background=dark
endif
nnoremap <leader>t :let &background = ( &background == "dark"? "light" : "dark" )<CR>
