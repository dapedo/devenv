#!/usr/bin/bash

# Initial dependencies
apt-get install git wget curl

# Public keys / Additional repositories
wget -qO - https://typora.io/linux/public-key.asc | apt-key add -
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
add-apt-repository 'deb https://typora.io/linux ./' -y
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
add-apt-repository ppa:git-core/ppa -y
add-apt-repository ppa:danielrichter2007/grub-customizer -y
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | tee -a /etc/apt/sources.list.d/insomnia.list 


curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list

# Get latest package lists
apt-get update

# Remove older packages 
apt-get remove docker docker-engine docker.io containerd runc

# Install the packages
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    gnupg \
    lsb-release \
    software-properties-common \
    typora \
    code \
    insomnia \
    brave-browser 
    fonts-firacode \
    git \
    libssl-dev \
    zlib1g-dev \
    libreadline-dev \
    zlib1g-dev \
    libpq-dev \
    grub-customizer \
    zsh

git config --global user.name "Pedro Henrique dos Santos"
git config --global user.email pedro.santos@cjr.org.br

chsh -s $(which zsh) # Make zsh the default shell
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

# Adds the flathub remote
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Installs flatpak packages
flatpak install flathub com.discordapp.Discord --noninteractive
flatpak install flathub com.spotify.Client --noninteractive
flatpak install flathub com.slack.Slack --noninteractive

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Clone p10k theme and put it on themes folder
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Clone plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting