call plug#begin("~/.vim/plugged")
Plug 'HerringtonDarkholme/yats.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(8) } }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox
let mapleader = " "
