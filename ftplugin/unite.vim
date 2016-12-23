"let b:SuperTabDisabled=1
imap <buffer> <C-w>   <Plug>(unite_delete_backward_path)
imap <buffer> <TAB> <ESC>a
imap <buffer> <C-j> <Plug>(unite_insert_leave)
imap <buffer> <C-k> <Plug>(unite_insert_leave)
"imap <buffer> <ESC> <Plug>(unite_exit)

nmap <buffer> <ESC> <Plug>(unite_exit)
nmap <buffer> <C-j> j
nmap <buffer> <C-k> k
