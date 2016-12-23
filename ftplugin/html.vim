if &filetype == 'html' "Exclude markdown
    "With vim-closetag don't need the end tag
    nnoremap <buffer> <localleader>b diwi<strong>p
    nnoremap <buffer> <localleader>i diwi<em>p
    nnoremap <buffer> <localleader>t diwi<tt>p

    nnoremap <buffer> <C-k>v :!open '%'<cr>
endif
