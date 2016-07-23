
let s:width = 80

" section header
function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")
    return repeat('-', s:width) . "\n"
    \      . "-- " . name . "\n"
    \      . "\n"
endfunction
"" shortcut
nmap <silent> --s "=HaskellModuleSection()<CR>gp


" module header
function! HaskellModuleHeader(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
    let note = 1 < a:0 ? a:2 : inputdialog("Note: ")
    let description = 2 < a:0 ? a:3 : inputdialog("Describe this module: ")

    return  repeat('-', s:width) . "\n" 
    \       . "-- | \n" 
    \       . "-- Module      : " . name . "\n"
    \       . "-- Note        : " . note . "\n"
    \       . "-- \n"
    \       . "-- " . description . "\n"
    \       . "-- \n"
    \       . repeat('-', s:width) . "\n"
    \       . "\n"
    \       . "module " . name . " where"
    \       . "\n"
endfunction
"" shortcut
nmap <silent> --h "=HaskellModuleHeader()<CR>:0put =<CR>


" completion
let g:haskellmode_completion_ghc = 0
setlocal omnifunc=necoghc#omnifunc


" tabular (alignment)
vmap a= :Tabularize /=<cr>
vmap a; :Tabularize /::<cr>
vmap a- :Tabularize /-><cr>
