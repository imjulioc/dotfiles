[ -d $HOME/.bin ] && PATH="$PATH:$HOME/.bin"
[ -d $HOME/.local/bin ] && PATH="$PATH:$HOME/.local/bin"

export LANG=en_US.UTF-8
export PAGER=less
export EDITOR=vim

export PATH=$PATH:/usr/local/go/bin

export FLATPAK_ROOT=/var/lib/flatpak
[ -d $FLATPAK_ROOT ] && PATH="$PATH:$FLATPAK_ROOT/exports/bin"

source ~/.bashrc

export PATH

unset try_source