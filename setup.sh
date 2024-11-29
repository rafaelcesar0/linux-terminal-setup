#!/bin/zsh

# Obtendo o diretório onde o script está localizado (deve vir antes de usar $SCRIPT_DIR)
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Função para verificar se comando foi executado com sucesso
check_execution() {
    if [ $? -eq 0 ]; then
        echo "✓ $1 instalado com sucesso"
    else
        echo "✗ Erro ao instalar $1"
        exit 1
    fi
}

echo "Iniciando configuração do ambiente..."

# Atualizando o Linux
echo "Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y
check_execution "Atualização do sistema"

# Oh-My-Zsh Plugins
echo "Instalando plugins do Oh-My-Zsh..."
git clone https://github.com/z-shell/F-Sy-H.git \
    ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/F-Sy-H
git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions \
    ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
check_execution "Plugins Oh-My-Zsh"

# Starship
echo "Instalando Starship..."
curl -sS https://starship.rs/install.sh | sh
check_execution "Starship"

# Starship Config
echo "Configurando Starship..."
mkdir -p ~/.config
cp -f "$SCRIPT_DIR/config/starship.toml" ~/.config/
check_execution "Configuração Starship"

# Zoxide
echo "Instalando Zoxide..."
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
check_execution "Zoxide"

# Fzf
echo "Instalando Fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install -y
check_execution "Fzf"

# zshrc
echo "Configurando zshrc..."
cp -f "$SCRIPT_DIR/config/.zshrc" ~/
check_execution "zshrc"

# NVM & Node
echo "Instalando NVM e Node..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
check_execution "NVM"

echo "Instalando Node LTS..."
nvm install --lts
nvm use --lts
nvm alias default 'lts/*'
check_execution "Node LTS"

# Pnpm
echo "Instalando Pnpm..."
curl -fsSL https://get.pnpm.io/install.sh | sh -
check_execution "Pnpm"

# Bun
echo "Instalando Bun..."
sudo apt install -y unzip
curl -fsSL https://bun.sh/install | bash
check_execution "Bun"

echo "✓ Configuração concluída! Por favor, reinicie o terminal para aplicar as mudanças."
