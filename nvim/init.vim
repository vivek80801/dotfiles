call plug#begin("~/.vim/plugged")
Plug 'HerringtonDarkholme/yats.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(8) } }
call plug#end()

let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }


colorscheme gruvbox
let mapleader = " "
let fc = g:firenvim_config['localSettings']
let fc['https?://twitter.com/'] = { 'takeover': 'never', 'priority': 1 }

au BufEnter github.com_*.txt set filetype=markdown

if exists('g:started_by_firenvim')
  set laststatus=0
else
  set laststatus=2
endif

