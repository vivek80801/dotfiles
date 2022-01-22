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
nnoremap <c-j> :cnext<CR>
nnoremap <c-k> :cprev<CR>
nnoremap <leader>j :lnext<CR>
nnoremap <leader>k :lprev<CR>

" React specific
au fileType typescriptreact iab rfce import<Space>React<Space>from<Space>"<Esc>A<bs>react"<Esc>A<bs>;<Enter><Enter>const<Space><Esc>:put =expand('%:t')<CR><Esc>kJA<bs><bs><bs><bs> :React.FC = ():JSX.Element => {<Enter>return(<Enter><<Esc>la<Enter><<Esc>a/<Esc>A<bs><Enter><Enter>export default<Esc>:put =expand('%:t')<CR>kJA<bs><bs><bs><bs>;<Esc>3ko
au fileType typescriptreact iab st const<Space>[state,<Space>setState<Esc>A<Space>=<Space>React.useState(<Esc>A;<Esc>F(a
au fileType typescriptreact iab ef const<Space>[state,<Space>setState<Esc>A<Space>=<Space>React.useState(<Esc>A;<Esc>F(a
