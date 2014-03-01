[ -z "$PS1" ] && return

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
CYAN2="\[\033[01;36m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[00m\]"


function parse_git_dirty {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWCOLORHINTS=true
# GIT_PS1_SHOWUPSTREAM="AUTO"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR=/usr/bin/vim
export GIT_EDITOR=/usr/bin/vim

#export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "

export PS1="\[\033[01;32m\]takhyon:$CYAN2\w$WHITE\$(parse_git_branch)\$ "

alias ls='ls -GFh --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi='vim'
alias cd..='cd ..'
alias cd~='cd ~'
alias ppcd='cd ~/workspace/puppet/'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
