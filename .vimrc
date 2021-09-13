syntax on
filetype plugin on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set signcolumn=yes
set number
set hidden
set updatetime=50
set scrolloff=8
set noerrorbells
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*
set wildignore+=**/.build/*
set wildignore+=**/.dist/*
set background=dark
set noerrorbells visualbell t_vb=
set showmatch

"netrw the file explorer or file tree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 15
let g:netrw_bufsettings="noma nomod nu nobl nowrap ro rnu"

"plugins
if filereadable(expand("~/.vim/autoload/plug.vim"))
    call plug#begin("~/.vim/plugged")
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'airblade/vim-gitgutter'
    Plug 'szw/vim-maximizer'
    call plug#end()
    colorscheme gruvbox
else
    echo "plug is not installed"
    colorscheme pablo
endif

let mapleader = " "

"vim keybindings
inoremap jj <Esc>
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ` ``<Esc>i
inoremap < <><Esc>i
nnoremap ew <C-w><C-w>
nnoremap eh <C-w>h
nnoremap el <C-w>l
nnoremap <leader>; A;<Esc>
nnoremap <leader>e :Lexplore<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>
nnoremap <leader>re :so<Space>%<CR>
nnoremap <leader>s :e<Space>**/

"coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

noremap <silent> K :call <SID>show_documentation()<CR>
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>f :Prettier<CR>

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

command! -nargs=0 Prettier :CocCommand prettier.formatFile

"auto command
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
