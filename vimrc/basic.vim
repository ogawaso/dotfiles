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
" no making .swp
set noswapfile

nmap <leader>l :set list!<CR>
nmap <leader>n :set number!<CR>

nnoremap <Space>b :<C-u>buffers<CR>
let mapleader = ','
