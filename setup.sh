#!/bin/zsh


# Atualizando o Linux
sudo apt update && sudo apt upgrade -y


# Instalando plugins básicos do Oh-My-Zsh
git clone https://github.com/z-shell/F-Sy-H.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/F-Sy-H &&
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions


# Obtendo o diretório onde o script está localizado
SCRIPT_DIR=$(dirname "$(realpath "$0")")


# ~~~~~~~~~~~~~~~~~~~~ zshrc  ~~~~~~~~~~~~~~~~~~~~
cp -f "$SCRIPT_DIR/config/.zshrc" ~/


# # ~~~~~~~~~~~~~~~~~~~~ Fonts ~~~~~~~~~~~~~~~~~~~~
# mkdir -p ~/.fonts
# cp -f "$SCRIPT_DIR/fonts/*" ~/.fonts/


# # ~~~~~~~~~~~~~~~~~~~~ Starship ~~~~~~~~~~~~~~~~~~~~
# curl -sS https://starship.rs/install.sh | sh
# # ~~~~~~~~~~~~~~~~~~~~ Starship my config ~~~~~~~~~~~~~~~~~~~~
# mkdir -p ~/.config
# cp -f "$SCRIPT_DIR/config/starship.toml" ~/.config/


#  ~~~~~~~~~~~~~~~~~~~~ NVM & Node ~~~~~~~~~~~~~~~~~~~~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.zshrc
nvm i --lts
nvm use global default


# ~~~~~~~~~~~~~~~~~~~~ Bun ~~~~~~~~~~~~~~~~~~~~
sudo apt install -y unzip
curl -fsSL https://bun.sh/install | bash


source ~/.zshrc


echo "- Settings completed. Please restart the terminal to apply the changes."
