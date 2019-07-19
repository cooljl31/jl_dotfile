# Store dirs stack
# See ~/.dotfiles/oh-my-zsh/plugins/dirspersist.plugin.zsh
dirpersiststore
# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
  [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
