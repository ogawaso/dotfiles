# osx setup commands
- xcode
```console
xcode-select -install
```
- homebrew
```console
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```
- git clone
```console
git clone git://github.com/ogawaso/dotfiles.git
cd dotfiles
```

- install from Brewfile
```onsole
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew bundle
```

- setup dotfiles
```console
thor dotfiles:setup
```

