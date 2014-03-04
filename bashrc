[ -z "$PS1" ] && return

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
YELLOW_BOLD="\[\033[1;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
CYAN_BOLD="\[\033[01;36m\]"
GREEN="\[\033[0;32m\]"
GREEN_BOLD="\[\033[1;32m\]"
WHITE="\[\033[00m\]"

case "$OSTYPE" in
  darwin*)
    alias ls='ls -GF'
    alias ll='ls -lah'
    alias mate='~/bin/mate'
    export LSCOLORS=GxFxCxDxBxegedabagaced
    export EDITOR='mate -w'
  ;;
  linux*)
    alias ls='ls -F --color=auto'
    alias ll='ls -lah'
  ;;
esac

function parse_git_dirty {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi='vim'
alias cd..='cd ..'
alias cd~='cd ~'
alias ppcd='cd ~/workspace/puppet/'

export EDITOR=/usr/bin/vim
export GIT_EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8
export PS1="${GREEN_BOLD}takhyon:$CYAN_BOLD\w$WHITE\$(parse_git_branch)\$ "
export PS2="${YELLOW_BOLD}continue-> "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
