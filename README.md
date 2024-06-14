# Steps for installation

## 1. Install git, zsh, curl, wget and oh-my-zsh
```bash
sudo apt install -y git zsh curl wget &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 1.1 Configuring Git
```bash
git config --global init.defaultBranch main
git config --global user.name "your_github_username" # replace "your_github_username"
git config --global user.email "your_github_email" # replace "your_github_email"
```

### 1.2 Create SSH key (optional)
```bash
mkdir -p ~/.ssh
ssh-keygen -t rsa -C "your_github_email" -N "" -f ~/.ssh/id_rsa # replace "your_github_email"
# Starting the SSH agent
eval "$(ssh-agent -s)"
# Printing SSH public key
cat ~/.ssh/id_rsa.pub
```

## 2. Download repository
HTTPS

```bash
git clone https://github.com/rafaelcesar0/linux-terminal-setup.git
```
or SSH
```bash

git clone git@github.com:rafaelcesar0/linux-terminal-setup.git
```
or <b><u>[download ZIP](https://github.com/rafaelcesar0/linux-terminal-setup/archive/refs/heads/main.zip)</u></b>


## 3. Enter the repository folder
EX:
```bash
cd ~/setup-linux
```

## 4. Give executable permission to [*setup.sh*](https://github.com/rafaelcesar0/linux-terminal-setup/blob/main/setup.sh)
```bash
chmod +x ./setup.sh
```

## 5. Run [*setup.sh*](https://github.com/rafaelcesar0/linux-terminal-setup/blob/main/setup.sh)
```bash
./setup.sh
```