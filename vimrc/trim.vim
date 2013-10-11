function! RTrim()
  let s:cursor = getpos(".")
  %s/\s\+$//e
  call setpos(".",  s:cursor)
endfunction
autocmd BufWritePre *.php,*.erb,*.rb,*.js,*.bat,*.yml call RTrim()

