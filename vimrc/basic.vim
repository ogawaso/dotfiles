set tabstop=4
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
set display=lastline
set pumheight=10
" no making .swp
set noswapfile
set showmatch
set matchtime=1
set spell
set spelllang=en,cjk

nmap <leader>l :set list!<CR>
nmap <leader>n :set number!<CR>
nmap <leader>c cs"'<CR>

nnoremap <Space>b :<C-u>buffers<CR>
nnoremap Y y$
let mapleader = ','
