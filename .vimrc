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
set smarttab

" Functions
cmap w!! %!sudo tee > /dev/null %

" Mappings
map <F11> :previous<CR> " F11 opens previous buffer
map <F12> :next<CR>     " F12 opens next buffer
map <F5>  :!./%<CR>     " F5  runs the current file

" Pathogen
call pathogen#infect()
