nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>

nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>

 
if !has('gui_running') && !(has('win32') || has('win64'))
  " .vimrcの再読込時にも色が変化するようにする
  autocmd MyAutoCmd BufWritePost $MYVIMRC nested source $MYVIMRC
else
  " .vimrcの再読込時にも色が変化するようにする
  autocmd MyAutoCmd BufWritePost $MYVIMRC source $MYVIMRC | 
        \if has('gui_running') | source $MYGVIMRC  
  autocmd MyAutoCmd BufWritePost $MYGVIMRC if has('gui_running') | source $MYGVIMRC
endif

