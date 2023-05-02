[ -z "$PS1" ] && return

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

shopt -s checkwinsize histappend

if ! shopt -oq posix; then
	[ -f /etc/bash_completion ] && \. /etc/bash_completion
	[ -f /usr/local/etc/bash_completion ] && \. /usr/local/etc/bash_completion
fi

[ -f "$HOME/.bash/aliases.bash" ] && \. "$HOME/.bash/aliases.bash"
[ -f "$HOME/.bash/colors.bash" ] && \. "$HOME/.bash/colors.bash"
[ -f "$HOME/.bash/environment.bash" ] && \. "$HOME/.bash/environment.bash"
[ -f "$HOME/.bash/functions.bash" ] && \. "$HOME/.bash/functions.bash"
[ -f "$HOME/.bash/path.bash" ] && \. "$HOME/.bash/path.bash"
[ -f "$HOME/.bash/prompt.bash" ] && \. "$HOME/.bash/prompt.bash"
