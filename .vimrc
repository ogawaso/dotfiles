source ~/dotfiles/vimrc/basic

source ~/dotfiles/vimrc/completion

"ruby setting
source ~/dotfiles/vimrc/ruby_setting

"commentout.vim
source ~/dotfiles/vimrc/commentout

"vundle
source ~/dotfiles/vimrc/vundle

"unite.vim
source ~/dotfiles/vimrc/unite

syntax on
filetype on
filetype plugin indent on

"set foldmethod=indent
"set foldlevel=0

let g:netrw_alto = 1
let g:netrw_altv = 1


"set enc=utf-8
"set fenc=utf-8
"set fencs=iso-2022-jp,euc-jp,cp932
"
"rails.vim
let g:rails_level=4
let g:rails_default_file="app/controllers/application_controller.rb"
let g:rails_default_database="mysql"


"rubycomplete.vim
"ruby set omnifunc=rubycomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_classes_in_global = 1

" neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_snippets_dir  = '~/.vim/bundle/snipmate.vim/snippets'

imap <C-k>     <Plug>(neocomplcache_snippets_expand)


" quickrun.vim
let g:quickrun_config = {}
let g:quickrun_config['ruby.rspec'] = {'command': 'spec'}

"smartchr
inoremap <expr> <buffer> {  smartchr#loop('{', '#{', '{{{')

imap } }<Left>
imap [] []<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>

function! RTrim()
  let s:cursor = getpos(".")
  %s/\s\+$//e
  call setpos(".",  s:cursor)
endfunction
autocmd BufWritePre *.php,*.rb,*.js,*.bat call RTrim()
