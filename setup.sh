#!/bin/zsh

# Obtendo o diretório onde o script está localizado
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# # Removendo travas eventuais do apt
# sudo rm -f /var/lib/dpkg/lock-frontend
# sudo rm -f /var/cache/apt/archives/lock

# Atualizando o Linux
sudo apt update && sudo apt upgrade -y

# Mudando o shell padrão para zsh 
chsh -s $(which zsh) ;

# starship.rs
curl -sS https://starship.rs/install.sh | sh

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
cp -f "$SCRIPT_DIR/config/.bash_aliases" ~/

mkdir -p ~/.config
cp -f "$SCRIPT_DIR/config/starship.toml" ~/.config/

# mkdir -p ~/.fonts
# cp -f "$SCRIPT_DIR/fonts/*" ~/.fonts/

mkdir -p ~/dev
source ~/.zshrc

echo "- Configurações concluídas. Por favor, reinicie o terminal para aplicar as mudanças."
