call pathogen#infect()
syntax on
filetype plugin indent on

" set default font
set guifont=Monaco:h13

" turn on line numbers
set number

" allow files to be hidden without saving
set hidden

" turn off toolbar in gui vim
set guioptions=t

" new split windows should be on the right or bottom
set splitright
set splitbelow

colorscheme solarized

" map leader n to toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" map command / to toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>

" Make the command :C clear the current search
command C let @/=""
