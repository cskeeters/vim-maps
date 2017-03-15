setlocal commentstring=#%s
setlocal nofoldenable

nnoremap <buffer> <C-k>v :update<cr>:lcd %:p:h<cr>:!mkdir -p output<cr>:!( cd output; tj3 --no-color '%:p' && open %:r.html )<cr>
