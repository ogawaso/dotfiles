let g:alpaca_update_tags_config  =  {
      \ '_' : '-R --sort=yes  --languages=+Ruby --languages=-js,html,css',
      \ 'ruby': '-R --languages=+Ruby',
      \ }

" let g:alpaca_tags_print_to_console  =  {
"                         \ 'debug' : 1,
"                         \ 'setted tags' : 1,
"                         \ 'created/updated tags' : 1,
"                         \ }

let g:alpaca_tags_ctags_bin = '/usr/local/bin/ctags'
augroup AlpacaTags
  autocmd!
  if exists(':Tags')
    autocmd BufWritePost * TagsUpdate ruby
    autocmd BufWritePost Gemfile TagsBundle
    autocmd BufEnter * TagsSet
  endif
augroup END

nnoremap <expr>tt  ':Unite tags -horizontal -buffer-name=tags -input='.expand("<cword>").'<CR>'

