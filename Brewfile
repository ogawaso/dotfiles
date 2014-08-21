# Make sure using latest Homebrew
update || true

# Update already-installed formula
upgrade || true

# Add Repository
tap homebrew/versions    || true
tap homebrew/binary      || true
tap thoughtbot/formulae  || true
tap caskroom/cask        || true
tap motemen/ghq          || true
tap peco/peco            || true
tap homebrew/dupes       || true

# Packages

## Shell
install zsh   || true


## Git
install git   || true
install hub   || true
install gist  || true
install tig   || true

## Utils
install coreutils || true
install wget      || true
install curl      || true
install curl-ca-bundle  || true
install proctools || true
install tree      || true
install openssl   || true
install libyaml   || true
install readline  || true
install screen    || true
install markdown  || true
install nkf       || true
install direnv    || true

#ruby
install rbenv            || true
install ruby-build       || true
install hub              || true
install lixml2           || true
install lixslt           || true
install libiconv         || true
link libxml2
link libxslt

## Languages
install go               || true
install haskell-platform || true
install scala            || true
install erlang --devel   || true
install elixir           || true
install python          || true

#  javascript
install node             || true
install phantomjs        || true

install mercurial        || true
## Editor
install vim --devel --with-lua || true

## DevOps
install packer      || true
install ansible     || true

## Heroku
install heroku-toolbelt || true

# tool
install ghq         || true
install peco        || true

# Casks
install brew-cask
cask install google-chrome || true
cask install dropbox       || true
cask install virtualbox    || true
cask install vagrant       || true
cask install dash          || true
cask install boot2docker   || true

# Remove outdated versions
cleanup
