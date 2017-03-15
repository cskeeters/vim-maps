setlocal commentstring=#%s

nnoremap <buffer> <C-k>v :update<cr>:lcd %:p:h<cr>:!mkdir output<cr>:!( cd output; tj3 --no-color '%:p' && open %:r.html )<cr>
