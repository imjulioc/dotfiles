case `uname` in
	Linux*)
		if [ -x /usr/bin/dircolors ]; then
			alias ls='ls --color=auto'
			alias grep='grep --color=auto'
			alias egrep='egrep --color=auto'
			alias fgrep='fgrep --color=auto'
		fi
		;;
esac
