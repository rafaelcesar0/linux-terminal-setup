# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
eval "$(starship init zsh)"
export GIT_PAGER=


plugins=(git colored-man-pages zsh-autosuggestions F-Sy-H web-search)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# bun completions
[ -s "/home/rafael/.bun/_bun" ] && source "/home/rafael/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
