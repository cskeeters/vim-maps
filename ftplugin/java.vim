"cskeeters/javadoc.vim
nmap <buffer> K <Plug>JavadocOpen

"cskeeters/jcall.vim
nmap <buffer> <leader>ch <Plug>JCallOpen
nmap <buffer> <f3> <Plug>JCallJump
nmap <buffer> <leader>cch <Plug>JCallClear

"cskeeters/vim-log4j
nmap <buffer> <leader>l :Log4jDebug<cr>

" compiler ant

" Macro that transforms copied text from java api into import statement
let @i="i*a;kkIimport Jcf ."
