" Set augroup.
augroup MyAutoCmd
  autocmd!
augroup END


filetype off
"vundle
source ~/dotfiles/vimrc/vundle

filetype plugin indent on


source ~/dotfiles/vimrc/accelerated-jk
source ~/dotfiles/vimrc/altr
source ~/dotfiles/vimrc/anzu
source ~/dotfiles/vimrc/auto_mkdir
source ~/dotfiles/vimrc/auto_save
source ~/dotfiles/vimrc/basic
source ~/dotfiles/vimrc/completion
source ~/dotfiles/vimrc/fugitive
source ~/dotfiles/vimrc/neocomplete
source ~/dotfiles/vimrc/neosnippet
source ~/dotfiles/vimrc/nerd_tree
source ~/dotfiles/vimrc/nomotion
source ~/dotfiles/vimrc/switch
source ~/dotfiles/vimrc/rails
source ~/dotfiles/vimrc/rspec
source ~/dotfiles/vimrc/ruby_setting
source ~/dotfiles/vimrc/trim
source ~/dotfiles/vimrc/unite
source ~/dotfiles/vimrc/vimrc

syntax on

" statusline
" set statusline=%F%Q%l%{anzu#search_status()}
set statusline=%F%m%r%h%w%{fugitive#statusline()}%{anzu#search_status()}

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


"smartchr
inoremap <expr> <buffer> {  smartchr#loop('{', '#{', '{{{')
"inoremap <expr> = smartchr#one_of(' = ', ' == ', ' === ', '=')
"inoremap <expr> + smartchr#one_of(' + ')
"inoremap <expr> - smartchr#one_of(' - ')
"inoremap <expr> , smartchr#one_of(', ')

"vimfiler
":let g:vimfiler_as_default_explorer = 1

"toggle.vim C - T
let g:toggle_pairs = { 'and' : 'or', 'or' : 'and'}

imap } }<Left>
imap [] []<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>

nnoremap <Esc><Esc> :nohlsearch<CR>

autocmd BufRead,BufNewFile *.json set ft=javascript
"grep
autocmd QuickFixCmdPost *grep* cwindow

source $VIMRUNTIME/macros/matchit.vim
runtime macros/matchit.vim
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

