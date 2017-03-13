setlocal commentstring=#%s

nnoremap <buffer> <C-k>v :update<cr>:!tj3 --no-color '%' && open %:r.html<cr>
