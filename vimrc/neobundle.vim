" set rtp+=~/dotfiles/vundle.git/
"call vundle#rc()

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle '907th/vim-auto-save'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimproc', {
  \  'build' : {
  \    'mac' : 'make -f make_mac.mak',
  \    'unix' : 'make -f make_unix.mak',
  \  },
  \}
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'basyura/unite-rails'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'honza/vim-snippets'
NeoBundle 'houtsnip/vim-emacscommandline'
"NeoBundle 'kana/vim-altr'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/calendar-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/learn-vimscript'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'osyo-manga/shabadou.vim'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'osyo-manga/vim-anzu'
NeoBundle 'rhysd/accelerated-jk'
NeoBundle 'rhysd/vim-textobj-ruby'
NeoBundle 'deris/vim-textobj-enclosedsyntax'
NeoBundle 'rbtnn/vimconsole.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sgur/unite-git_grep'
NeoBundle 'taku-o/vim-toggle'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/smartchr'
NeoBundle 'rking/ag.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'sorah/unite-ghq'
NeoBundle 'szw/vim-tags'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'cohama/agit.vim'

call neobundle#end()

NeoBundleCheck
