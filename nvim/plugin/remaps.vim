inoremap jj <Esc>
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
nnoremap <leader>st :e<Space>**/*.ts
nnoremap <leader>sj :e<Space>**/*.js
nnoremap <leader>sx :e<Space>**/*.tsx
nnoremap <leader>t :terminal<CR>
nnoremap <leader>y "+yy:echo "copied to calipboard"<CR>
nnoremap <leader>p "+p:echo "pasted from calipboard"<CR>
vnoremap <leader>y "+yy:echo "copied to calipboard"<CR>
vnoremap <leader>p "+p:echo "pasted from calipboard"<CR>
tnoremap jj <C-\><C-n>
" go to the file from where error is coming and press CTRL+u to come back to
" terminal
tnoremap <leader>gf <C-w>F
