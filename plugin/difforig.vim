" command! DiffOrig rightbelow vertical new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
"
"
" function! s:DiffWithSaved()
"   let filetype=&ft
"   diffthis
"   vnew | r # | normal! 1Gdd
"   diffthis
"   exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
" endfunction
" com! DiffSaved call s:DiffWithSaved()

function! Diff(spec)
    vertical new
    setlocal bufhidden=wipe buftype=nofile nobuflisted noswapfile
        let cmd = "++edit #"
    if len(a:spec)
        let cmd = "!git -C " . shellescape(fnamemodify(finddir('.git', '.;'), ':p:h:h')) . " show " . a:spec . ":#"
    endif
    execute "read " . cmd
    silent 0d_
    diffthis
    wincmd p
    diffthis
endfunction
command! -nargs=? Diff call Diff(<q-args>)
