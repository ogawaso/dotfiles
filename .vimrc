set tabstop=8
set softtabstop=4
set shiftwidth=2
set expandtab
set smarttab
set number
set ruler
set showcmd

set autoindent
set smartindent
set incsearch
set ignorecase
set hlsearch
set wildmenu
set nobackup
set list
set showmode
set laststatus=2
syntax on
filetype on
filetype plugin indent on

"set foldmethod=indent
"set foldlevel=0

let g:netrw_alto = 1
let g:netrw_altv = 1


map <F3>   :tabnext<CR>
map <F2>   :tabprevious<CR>
map <C-N>   :bnext<CR>
map <C-P>   :bprevious<CR>
map <C-W><C-V> :Vexplore!<CR>
map <C-W><C-H> :Hexplore<CR>
map! <C-W><C-V> <Esc>:Vexplore!<CR>
map! <C-W><C-H> <Esc>:Hexplore<CR>
imap <C-Space> <C-x><C-o>

nnoremap <F4> :grep <cword> ./*
function! MagicComment()
  return "# -*- coding: utf-8 -*-\<CR>"
endfunction

inoreabbrev <buffer> ## <C-R>=MagicComment()<CR>

autocmd BufNewFile *.rb 0r ~/.vim/templates/rb.tpl

"set enc=utf-8
"set fenc=utf-8
"set fencs=iso-2022-jp,euc-jp,cp932
"
"rails.vim
let g:rails_level=4
let g:rails_default_file="app/controllers/application_controller.rb"
let g:rails_default_database="mysql"



set rtp+=~/config/vimfiles/vundle.git/
call vundle#rc()
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'tpope/vim-rails'

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
smap <C-k>     <Plug>(neocomplcache_snippets_expand)


" quickrun.vim
let g:quickrun_config = {}
let g:quickrun_config['ruby.rspec'] = {'command': 'spec'}

"smartchr
inoremap <expr> <buffer> {  smartchr#loop('{', '#{', '{{{')

"unite.vim$
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uo :<C-u>Unite outline<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

"vim-unite-history
nnoremap <silent> ,uh :<C-u>Unite history/command<CR>

"commentout.vim
vmap ,# :s/^/#/<CR>:nohlsearch<CR>
vmap ,/ :s/^/\/\//<CR>:nohlsearch<CR>
vmap ,> :s/^/> /<CR>:nohlsearch<CR>
vmap ," :s/^/\"/<CR>:nohlsearch<CR>
vmap ,% :s/^/%/<CR>:nohlsearch<CR>
vmap ,! :s/^/!/<CR>:nohlsearch<CR>
vmap ,; :s/^/;/<CR>:nohlsearch<CR>
vmap ,- :s/^/--/<CR>:nohlsearch<CR>
vmap ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>
" wrapping comments
vmap ,* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
vmap ,( :s/^\(.*\)$/\(\* \1 \*\)/<CR>:nohlsearch<CR>
vmap ,< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
vmap ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>

" block comments
vmap ,b v`<I<CR><esc>k0i/*<ESC>`>j0i*/<CR><esc><ESC>
vmap ,h v`<I<CR><esc>k0i<!--<ESC>`>j0i--><CR><esc><ESC>

