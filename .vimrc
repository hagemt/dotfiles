" Turn on line numbering
set number

" Show the file name
set title

" Syntax highlighting, color scheme, and brace matching
syntax on
colorscheme elflord
set showmatch

" Plugins
filetype plugin on
filetype indent on

" Tabbing
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab

" Functions
cmap w!! %!sudo tee > /dev/null %

" Mappings
map <F1> :previous<CR> " F1 opens previous buffer
map <F2> :next<CR>     " F2 opens next buffer

" Pathogen
call pathogen#infect()
