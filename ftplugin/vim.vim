nnoremap <buffer> K :call VimHelp()<cr>

function! VimHelp()
    let word=expand("<cword>")
    let line=getline(".")

    if l:line =~ '&'.l:word || l:line =~ 'set'
        execute "help '".l:word."'"
        return
    endif

    if l:line =~ l:word."("
        execute "help ".l:word."()"
        return
    endif

    execute "help ".l:word
endfunction
