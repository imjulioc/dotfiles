# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

shopt -s checkwinsize histappend

HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=2000

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

source ~/.bash/colors.bash
source ~/.bash/aliases.bash
source ~/.bash/functions.bash
source ~/.bash/prompt.bash

. "$HOME/.cargo/env"

[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"