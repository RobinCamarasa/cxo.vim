" The initial idea was to rely on xdg-open but it can be messy to set-up new filetype
let g:xdg_open = {
            \"pdf": "zathura",
            \"html": "firefox",
            \"doc": "onlyoffice-desktopeditors",
            \"docx": "onlyoffice-desktopeditors",
            \"png": "sxiv",
            \"jpeg": "sxiv",
            \"jpg": "sxiv",
            \"svg": "inkscape",
            \"gz": "itksnap",
            \"nii": "itksnap",
            \"scad": "openscad",
            \}

function s:OpenDocument(isnew)
    if a:isnew
        if exists("g:xfile")
            let s:input = g:xfile
        else
            let s:input = ""
        endif
        let g:xfile = input("XFile: ", s:input)
    else
        if !exists("g:xfile")
            echom "Set g:xfile via <localleader>P"
            return
        endif
    endif
    call system(g:xdg_open[split(g:xfile, '\.')[-1]] .. ' ' .. g:xfile .. ' 2>/dev/null &')
endfunction


nnoremap <leader>P :call <SID>OpenDocument(1)<CR>
nnoremap <leader>p :call <SID>OpenDocument(0)<CR>


