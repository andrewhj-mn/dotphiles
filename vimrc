execute pathogen#infect()
syntax on
if has('gui_running')
    set background=light
    let g:airline_solarized_bg='light'
else
    set background=dark
    let g:airline_solarized_bg='dark'
endif
" let g:solarized_termcolors=256
let g:airline_theme='solarized'
colorscheme solarized
filetype plugin indent on
set number
set scrolloff=3
set ttimeoutlen=10
map <leader>r :so $MYVIMRC
