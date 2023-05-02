export LANG=en_US.UTF-8
export EDITOR=vim
export PAGER=less

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=1000

ASDF_DIR="$HOME/.asdf"
ASDF_PLUGIN_JAVA="$ASDF_DIR/plugins/java"
ASDF_DIRENV_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv"

[ -s "$ASDF_DIR/asdf.sh" ] && \. "$ASDF_DIR/asdf.sh"
[ -s "$ASDF_DIR/completions/asdf.bash" ] && \. "$ASDF_DIR/completions/asdf.bash"
[ -s "$ASDF_PLUGIN_JAVA/set-java-home.bash" ] && \. "$ASDF_PLUGIN_JAVA/set-java-home.bash"
[ -s "$ASDF_DIRENV_CONFIG/bashrc" ] && \. "$ASDF_DIRENV_CONFIG/bashrc"
