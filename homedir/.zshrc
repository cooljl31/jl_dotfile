# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
# export ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context time battery dir vcs virtualenv custom_wifi_signal)
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="echo signal: \$(nmcli device wifi | grep yes | awk '{print \$8}')"
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="blue"
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow"
# zsh_wifi_signal(){
#         local signal=$(nmcli device wifi | grep yes | awk '{print $8}')
#         local color='%F{yellow}'
#         [[ $signal -gt 75 ]] && color='%F{green}'
#         [[ $signal -lt 50 ]] && color='%F{red}'
#         echo -n "%{$color%}\uf230  $signal%{%f%}" # \uf230 is 
# }
#
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context time battery dir vcs virtualenv custom_wifi_signal)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
# export LC_ALL="no_NO.UTF-8"
#export ZSH_THEME="random"
export ZSH_THEME="jnrowe"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(wp-cli colorize compleat dirpersist git gulp history cp)

source $ZSH/oh-my-zsh.sh
#source ~/.dotfiles/oh-my-zsh/plugins/zsh-autosuggestions # /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#source ~/.dotfiles/oh-my-zsh/plugins/zsh-autosuggestions
# /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
test -e "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" && source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

source /usr/local/opt/nvm/nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    nvm use default &> /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
fortune

. /Users/cooljl31/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cooljl31/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/cooljl31/google-cloud-sdk/path.zsh.inc'; fi

eval "$(rbenv init -)"
eval `ssh-agent -s`

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cooljl31/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/cooljl31/google-cloud-sdk/completion.zsh.inc'; fi

# added by travis gem
[ -f /Users/Jim/.travis/travis.sh ] && source /Users/Jim/.travis/travis.sh
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/libiconv/bin:$PATH"
# Zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Neovim
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"


# nvm
# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"

# NodeEnv
eval "$(nodenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/cooljl31/.sdkman"
[[ -s "/Users/cooljl31/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/cooljl31/.sdkman/bin/sdkman-init.sh"
 [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export PATH="$HOME/.nodenv/bin:$PATH"
