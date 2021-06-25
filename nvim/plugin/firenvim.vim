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

let fc = g:firenvim_config['localSettings']
let fc['https?://twitter.com/'] = { 'takeover': 'never', 'priority': 1 }
let fc['https?://https://app.coderpad.io/TJAED4NG/'] = { 'takeover': 'never', 'priority': 1 }

au BufEnter github.com_*.txt set filetype=markdown

if exists('g:started_by_firenvim')
  set laststatus=0
else
  set laststatus=2
endif
