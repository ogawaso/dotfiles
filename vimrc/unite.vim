"unite.vim$
nnoremap [unite] <Nop>
nmap     ,u [unite]
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]o :<C-u>Unite outline<CR>
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"nnoremap <silent> [unite]g :<C-u>Unite ghq<CR>
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]r :<C-u>Unite file_rec<CR>

nnoremap <silent> [unite]h :<C-u>Unite help<CR>
nnoremap <silent> [unite]g :<C-u>call <SID>unite_smart_grep()

function! s:unite_smart_grep()
  if unite#sources#grep_git#is_available()
    Unite grep/git:. -buffer-name=search-buffer
  elseif unite#sources#grep_hg#is_available()
    Unite grep/hg:. -buffer-name=search-buffer
  else
    Unite grep:. -buffer-name=search-buffer
  endif
endfunction
