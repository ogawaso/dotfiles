[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
bindkey -e

autoload zed
autoload zargs

#LANG=ja_JP.UTF-8

local RED=$'%{\e[1;35m%}'
local DEFAULT=$'%{\e[1;m%}'

setopt prompt_subst
setopt extended_glob

PROMPT='[%~]'
#PROMPT=$RED'[%~]'$DEFAULT

#RPROMPT=$RED'%t'$DEFAULT
RPROMPT='%t'

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

zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' list-colors ''
setopt auto_cd
setopt auto_pushd
setopt list_packed

autoload -U compinit
compinit -u

setopt correct

alias -s txt=vim
alias -s html=w3m
alias -s zip=zipinfo
alias ls='ls -G'
alias rubysrc='cd /opt/local/lib/ruby'
alias mysql='/opt/local/bin/mysql5/'

PATH=$PATH:/var/lib/gems/1.8/bin

function chpwd(){ls}
function fxg() {
  find -name '*.$1' | xargs grep -n '$2'
}

function history-all {history -E 1}

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/opt/local/lib:$PATH
export PATH=/usr/local/bin:$PATH


_rake_does_task_list_need_generating () {
    if [[ ! -f .rake_tasks ]]; then return 0;
    else
        return $([[ Rakefile -nt .rake_tasks ]])
    fi
}

_rake () {
    if [[ -f Rakefile ]]; then
        if _rake_does_task_list_need_generating; then
            echo "\nGenerating .rake_tasks..." >&2
            rake --silent --tasks | cut -d " " -f 2 >| .rake_tasks
        fi
        compadd $(<.rake_tasks)
    fi
}

compdef _rake rake
