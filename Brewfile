# Make sure using latest Homebrew
brew update || true

# Update already-installed formula
brew upgrade || true

# Add Repository
brew tap homebrew/versions    || true
brew tap homebrew/binary      || true
brew tap thoughtbot/formulae  || true
brew tap caskroom/cask        || true
brew tap motemen/ghq          || true
brew tap peco/peco            || true
brew tap homebrew/dupes       || true

# Packages

## Shell
brew install zsh   || true


## Git
brew install git   || true
brew install --HEAD hub   || true
brew install gist  || true
brew install tig   || true

## Utils
brew install coreutils || true
brew install wget      || true
brew install curl      || true
#install curl-ca-bundle  || true
#install proctools || true
brew install tree      || true
brew install openssl   || true
brew install libyaml   || true
brew install readline  || true
brew install screen    || true
#brew install markdown  || true
#install nkf       || true
brew install direnv    || true

#ruby
brew install rbenv            || true
brew install ruby-build       || true
brew install hub              || true
brew install lixml2           || true
brew install lixslt           || true
brew install libiconv         || true
brew link libxml2
brew link libxslt

## Languages
install go               || true
#install haskell-platform || true
#install scala            || true
#install erlang --devel   || true
#install elixir           || true
#install python          || true

#  javascript
#install node             || true
#install phantomjs        || true

install mercurial        || true
## Editor
brew install vim --devel --with-lua || true

## DevOps
#install packer      || true
#install ansible     || true

## Heroku
#install heroku-toolbelt || true

# tool
brew install ghq         || true
brew install peco        || true

# Casks
brew install brew-cask
brew cask install google-chrome || true
brew cask install dropbox       || true
brew cask install virtualbox    || true
brew cask install vagrant       || true
brew cask install dash          || true
brew cask install boot2docker   || true

# Remove outdated versions
brew cleanup
