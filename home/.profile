# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

source ~/.bash/env.bash

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export FLATPAK_ROOT=/var/lib/flatpak
export PATH=$PATH:/usr/local/go/bin
. "$HOME/.cargo/env"

# set PATH so it includes user's private bin if it exists
[ -d $HOME/bin ] && PATH="$PATH:$HOME/bin"

# set PATH so it includes user's private bin if it exists
[ -d $HOME/.local/bin ] && PATH="$PATH:$HOME/.local/bin"

[ -d $FLATPAK_ROOT ] && PATH="$PATH:$FLATPAK_ROOT/exports/bin"

export PATH

unset try_source