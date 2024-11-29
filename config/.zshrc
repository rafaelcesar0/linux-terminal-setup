# Path configuration
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# export GIT_PAGER=

# Oh My Zsh update configuration
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Performance improvement for completions
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Oh My Zsh plugins
plugins=(
  git
  colored-man-pages
  zsh-autosuggestions
  F-Sy-H
  web-search
  npm
  aliases
)

# Add zsh-completions to fpath
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Initialize tools
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export FZF_DEFAULT_OPTS='
  --height 40%
  --layout=reverse
  --border
  --info=inline
  --prompt="❯ "
  --pointer="❯"
  --marker="❯"
'

# Aliases
alias i='sudo apt install'
alias i-get='sudo apt-get install'
alias upd='sudo apt update && sudo apt upgrade -y'
alias mkdir='mkdir -pv'
alias f5='source ~/.zshrc'
alias cls='clear'
alias clean='sudo apt-get autoremove && sudo apt-get autoclean && sudo apt-get clean'
alias zshrc='code ~/.zshrc'
# alias note='gnome-text-editor'
