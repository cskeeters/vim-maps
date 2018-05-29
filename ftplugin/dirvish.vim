" Always change directory for the Dirvish buffer
" lcd %

nmap <buffer> . :cd %<cr>
nmap <buffer> u :cd %<cr>:Unite -start-insert -prompt=> -no-split -wipe file_rec<cr>

" Remove highlight and refresh
nnoremap <buffer> <silent> <C-L> :nohlsearch<CR>:Dirvish %<CR>:unlet b:vcvars<CR><C-L>

nmap <buffer> M :call dirvishmap#Mkdir()<cr>
nmap <buffer> D :call dirvishmap#Remove()<cr>
vnoremap <buffer> D :<C-U>call dirvishmap#RemoveAll()<cr>
