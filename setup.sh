#!/bin/zsh

# Obtendo o diretório onde o script está localizado
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Atualizando o Linux
sudo apt update && sudo apt upgrade -y

# Instalando plugins básicos do Oh-My-Zsh
git clone https://github.com/z-shell/F-Sy-H.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/F-Sy-H &&
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# NVM / Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.zshrc
nvm i --lts
nvm use global default

# Bun
sudo apt install -y unzip
curl -fsSL https://bun.sh/install | bash

# Copiando arquivos para os diretórios definidos
cp -f "$SCRIPT_DIR/config/.zshrc" ~/

# mkdir -p ~/.fonts
# cp -f "$SCRIPT_DIR/fonts/*" ~/.fonts/

mkdir -p ~/dev
source ~/.zshrc

# Mudando o shell padrão para zsh
chsh -s $(which zsh);

echo "- Settings completed. Please restart the terminal to apply the changes."
