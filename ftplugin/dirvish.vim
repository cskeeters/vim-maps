" Always change directory for the Dirvish buffer
lcd %

if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> . :cd %<cr>
nmap <buffer> u :cd %<cr>:Unite -start-insert -prompt=> -no-split -wipe file_rec<cr>

nmap <buffer> m :call dirvishmap#Mkdir()<cr>
nmap <buffer> d :call dirvishmap#Remove()<cr>
vnoremap <buffer> d :<C-U>call dirvishmap#RemoveAll()<cr>
