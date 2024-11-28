# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# export GIT_PAGER=

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git colored-man-pages zsh-autosuggestions F-Sy-H web-search npm aliases)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# If you want to start Starship discontent the line below.
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
# User configuration

# ~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~
alias i='sudo apt install'
alias i-get='sudo apt-get install'
alias upd='sudo apt update && sudo apt upgrade -y'
alias mkdir='mkdir -pv'
alias f5='source ~/.zshrc'
alias cls='clear'
alias clean='sudo apt-get autoremove && sudo apt-get autoclean && sudo apt-get clean'
alias zshrc='code ~/.zshrc'
# alias note='gnome-text-editor'
