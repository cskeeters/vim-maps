set formatprg=astyle\ -s4pb

nnoremap <buffer> <C-k>k :make -j4 \| cwindow<CR>

" need to 'set clipboard=' when copy and pasting control characters

" convert signature to method in cpp
" Class name needs to be saved in c register
let @m = "^d0W\"cPa::f;xi{}j"
let @s = "^Wf:dwdF i A;0j"
