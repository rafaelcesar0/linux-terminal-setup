# Information

Here you will find my terminal settings and the technology I use in my daily life.

## Technologies used
- [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Oh my zsh](https://ohmyz.sh/)
- [Starshipt](https://starship.rs)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [Fzf](https://github.com/junegunn/fzf)
- [Nvm](https://github.com/nvm-sh/nvm)
- [Pnpm](https://pnpm.io/)
- [Bun](https://bun.sh/)

# Steps for installation

## 1. Install `git`, `zsh`, `curl`, `wget` and `oh-my-zsh`
```bash
sudo apt install -y git zsh curl wget &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 1.1 Configuring Git (optional)
```bash
git config --global init.defaultBranch main
git config --global user.name "your_github_username" # Input your github username
git config --global user.email "your_github_email" # Input your github email
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
cd ~/linux-terminal-setup
```

## 4. Give executable permission to [*setup.sh*](https://github.com/rafaelcesar0/linux-terminal-setup/blob/main/setup.sh)
```bash
chmod +x ./setup.sh
```

## 5. Run [*setup.sh*](https://github.com/rafaelcesar0/linux-terminal-setup/blob/main/setup.sh)
```bash
./setup.sh
```
