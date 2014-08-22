[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
bindkey -e

autoload zed
autoload zargs

#LANG=ja_JP.UTF-8

local RED=$'%{\e[1;35m%}'
local DEFAULT=$'%{\e[1;m%}'

setopt prompt_subst
setopt extended_glob

PROMPT='[%~][%t]'
#PROMPT=$RED'[%~]'$DEFAULT

#RPROMPT=$RED'%t'$DEFAULT
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  psvar[2]=$(_git_not_pushed)
  psvar[3]=`ruby -e 'puts "#{RUBY_VERSION}p#{RUBY_PATCHLEVEL}"'`
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
function _git_not_pushed()
{
  if [ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ]; then
    head="$(git rev-parse HEAD)"
    for x in $(git rev-parse --remotes)
    do
      if [ "$head" = "$x" ]; then
        return 0
      fi
    done
    echo "NOT PUSHED!!!"
  fi
  return 0
}

RPROMPT="%1(v|%F{green}%1v$RED%2v%f%3v|)"
            

HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt extended_history
setopt share_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward


zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' list-colors ''
setopt auto_cd
setopt auto_pushd
setopt list_packed


setopt correct

alias -s txt=vim
alias -s html=w3m
alias -s zip=zipinfo
alias ls='ls -G'
alias g=git
alias r=rails
alias gcd='cd $(ghq list -p | peco)'
alias gh='gh-open $(ghq list -p | peco)'


function chpwd(){ls}
function gs() {
  git ls-files | xargs grep -n $1
}

function gg() {
  git grep -n --color $1
}

function ggvim() {
  vim $(git grep -n --no-color $@ | grep def | peco --query "$LBUFFER" | awk -F : '{print "-c " $2 " " $1}')
}

function history-all {history -E 1}

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/opt/local/lib:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH

if [ -x `which go` ]
then
  export GOROOT=`go env GOROOT`
  export GOPATH=$HOME
  export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
else
  echo "failure go path setting"
fi

export EDITOR=vim

export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cert.pem


#[[ -s "/Users/ogawaso/.rvm/scripts/rvm" ]] && source "/Users/ogawaso/.rvm/scripts/rvm"  # This loads RVM into a shell session.

if [ $SHLVL = 1 ];then
  screen
fi

if [ -x `which direnv` ]
then
  eval "$(direnv hook zsh)"
else
  echo 'failed divenv setting'
fi

eval "$(rbenv init - zsh)"
source ~/.rbenv/completions/rbenv.zsh

if [ -x `which hub` ]
then
  eval "$(hub alias -s)"
else
  echo 'failed hub setting'
fi

fpath=(~/zsh-completions/src $fpath)

autoload -U compinit
compinit -u
