" Show line numbering
set number
" Show the file name
set title
" Show matching braces
set showmatch
" Syntax highlighting
syntax on
colorscheme elflord

" Plugins
filetype plugin on
filetype indent on

" Tabbing
set smarttab

" Functions
cmap w!! %!sudo tee > /dev/null %

" Mappings
map <F1> :previous<CR> " F1 opens previous buffer
map <F2> :next<CR>     " F2 opens next buffer

" Pathogen
call pathogen#infect()
