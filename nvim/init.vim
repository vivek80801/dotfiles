call plug#begin("~/.vim/plugged")
Plug 'HerringtonDarkholme/yats.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(8) } }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'vivek80801/complete-brackets'
call plug#end()

colorscheme gruvbox
let mapleader = " "
