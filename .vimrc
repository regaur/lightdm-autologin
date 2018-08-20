set cursorline
set number

set backspace=2
set shellredir=>

filetype plugin indent on
syntax enable

let g:solarized_termcolors=16
let g:solarized_termtrans = 1
"set background=dark
"colorscheme solarized

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"show trailing whitespace
match Todo /\s\+$/

let jshint2_height = 8
let jshint2_save = 1

cabbr %% <C-R>=expand('%:p:h')<CR>

"common misspellings
iab cpnsole console
iab kisok kiosk

"Execute the current line in the buffer as an ex-mode command
"(great for testing stuff in your .vimrc)

"Example:
" Write the word "write" or "w" in a new line and exit insert mode
" type ",ex" to execute write (save the file)
map ,ex yy:@"<CR>
map ,today :r!date "+\%Y-\%m-\%d"<CR>
map ,reldate :r!date "+\%Y-\%m-\%d -v"
