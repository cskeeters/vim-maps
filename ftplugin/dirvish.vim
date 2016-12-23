" Always change directory for the Dirvish buffer
lcd %

if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

function! DirvishMkdir()
    let dir = inputdialog("Directory name ->")
    silent execute "!mkdir -p ".dir
    normal R
    redraw!
endfunction

function! DirvishRemove()
    let fullpath = getline(".")
    let confirm = inputdialog("Are you sure you want to remove ".l:fullpath."? ->", "y", "")
    if confirm == 'y'
        silent execute "!rm -rf ".l:fullpath
        normal R
        redraw!
    else
        echo "Canceled Remove"
    endif
endfunction

nmap <buffer> . :cd %<cr>
nmap <buffer> u :cd %<cr>:Unite -start-insert -prompt=> -no-split -wipe file_rec<cr>

nmap <buffer> m :call DirvishMkdir()<cr>
nmap <buffer> d :call DirvishRemove()<cr>
