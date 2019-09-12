"cskeeters/javadoc.vim
nmap <buffer> K <Plug>JavadocOpen

"cskeeters/jcall.vim
nmap <buffer> <leader>ch <Plug>JCallOpen
nmap <buffer> <f3> <Plug>JCallJump
nmap <buffer> <leader>cch <Plug>JCallClear

"cskeeters/vim-log4j
nmap <buffer> <leader>l :Log4jDebug<cr>

setlocal makeprg=ant

compiler ant
set makeprg=ant\ -emacs\ -q\ -find\ build.xml\ -l\ .ant.log
set makeef=.ant.log
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

" Macro that transforms copied text from java api into import statement
let @i="i*a;kkIimport Jcf ."
