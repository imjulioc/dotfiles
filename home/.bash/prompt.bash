if [[ $(LC_ALL=C type -t __git_ps1 2>/dev/null) == "function" ]]; then
	export GIT_PS1_SHOWDIRTYSTATE=1
	export GIT_PS1_SHOWUNTRACKEDFILES=1
	export GIT_PS1_SHOWSTASHSTATE=1
	export GIT_PS1_SHOWUPSTREAM="verbose"

	export PS1="\[\e[0m\]\w\[\e[1;33m\]\$(__git_ps1)\[\e[0m\] \$ "
else
	export PS1="\[\e[0m\]\w \$ "
fi
