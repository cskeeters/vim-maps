if exists("loaded_maps")
  finish
endif
let loaded_maps = 1

function! s:OpenMaps()
    let paths=globpath(&runtimepath, "ftplugin/".&filetype.".vim")
    for path in split(paths, "\n")
        "Regex, force ignore case
        if path =~# ".*vim-maps.*"
            execute "edit ".path
        endif
    endfor
endfunction

noremap <unique> <script> <Plug>OpenMaps  <SID>OpenMaps
noremap <SID>OpenMaps :call <SID>OpenMaps()<CR>
noremenu <script> Plugin.OpenMaps <SID>OpenMaps

if !exists(":OpenMaps")
  command -nargs=0 OpenMaps :call s:OpenMaps()
endif
