setlocal textwidth=80
setlocal wrap

" Setext style headers
nmap <buffer> <localleader>h yypVr=
nmap <buffer> <localleader>j yypVr-
nmap <buffer> <localleader>k yypVr^
nmap <buffer> <localleader>l yypVr~

"Make underlines for headings in reStructuredText format
nmap <buffer> <localleader>b "_yiWi**<ESC>lEa**<ESC>
nmap <buffer> <localleader>i "_yiWi*<ESC>lEa*<ESC>
nmap <buffer> <localleader>f "_yiWi`<ESC>lEa`<ESC>

nnoremap <buffer> <c-k>v :update<cr>:silent !rst2html.py '%' > %:r.htm && open %:r.htm<cr>

"For sed script debugging
nnoremap <buffer> <c-k><s-p> :update<cr>:!sed -nf ~/.rst2pdf/fb.sed '%' \| less<cr>

" pip install rst2pdf
nnoremap <buffer> <c-k>p :update<cr>:!rst2pdf '%' -o %:r.pdf && open %:r.pdf<cr>
nnoremap <buffer> <c-k><c-k>p :update<cr>:silent !perl -0pe 's/\n\n(.*\n=+)/\n\n.. raw:: pdf\n\n  FrameBreak 250\n\n\1/g;s/\n\n(.*\n-+)/\n\n.. raw:: pdf\n\n  FrameBreak 200\n\n\1/g' '%' \| rst2pdf > %:r.pdf && open %:r.pdf<cr>
