call plug#begin("~/.vim/plugged")
Plug 'HerringtonDarkholme/yats.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(8) } }
call plug#end()

colorscheme gruvbox
let mapleader = " "
