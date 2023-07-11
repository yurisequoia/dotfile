export GPG_TTY=$(tty)
alias proxy="export https_proxy=http://127.0.0.1:6152;export http_proxy=http://127.0.0.1:6152;export all_proxy=socks5://127.0.0.1:6153"
export PATH="/Users/yuri/Applications/azulzulu/bin:$PATH"
#path+=('/Users/yuri/Applications/waifu2x')
export NVM_LAZY_LOAD=true
export ZSH_PYENV_LAZY_VIRTUALENV=true
DEFAULT_USER=$USER
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
export UPDATE_ZSH_DAYS=7

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
  git
  zsh-autosuggestions
  F-Sy-H
  cp
  command-not-found
  safe-paste
  z
  macos
  zsh-nvm
  #zsh-pyenv
  pyenv-lazy
  autoupdate
  #docker
  #docker-compose
)

fpath+=/opt/homebrew/share/zsh/site-functions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -Uz compinit
compinit
source $ZSH/oh-my-zsh.sh
