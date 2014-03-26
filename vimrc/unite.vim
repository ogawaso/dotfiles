"unite.vim$
nnoremap [unite] <Nop>
nmap     ,u [unite]
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]o :<C-u>Unite outline<CR>
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]g :<C-u>Unite vcs_grep/git<CR>
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]r :<C-u>Unite file_rec<CR>

nnoremap <silent> [unite]h :<C-u>Unite help<CR>
