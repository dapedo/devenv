#!/usr/bin/bash

if ! command -v yay &> /dev/null
then
  echo -e "\e[1;31mYay could not be found. Make sure to enable AUR BEFORE installing it.\e[0m"
  echo "Please install yay with the following commands:"
  echo "sudo pacman -S --needed git base-devel"
  echo "git clone https://aur.archlinux.org/yay.git ~/.yay"
  echo "cd ~/.yay && makepkg -si"
  echo "rm -rf ~/.yay"
  exit
fi

declare -a aur_packages=("visual-studio-code-bin" "brave" "typora" 
"insomnia-bin" "docker" "docker-compose" 
"noto-fonts-emoji" "ttf-fira-code" "font-manager" "nerd-fonts-fira-mono")
declare -a flatpak_packages=("com.discordapp.Discord" "com.spotify.Client" "com.slack.Slack")

aur_install() {
  for pkg in ${aur_packages[@]}
    do
      yay ${pkg} -Sq --needed --noconfirm
    done
}

flatpak_install() {
  for pkg in ${flatpak_packages[@]}
    do
      flatpak install ${pkg} --noninteractive
    done
}   

asdf_install() {
  # The zshrc file has a default plugin that recognizes asdf
  cd ~
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
}

# TODO: Automate zsh installation
zsh_install() {
  # Oh my zsh installation
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  cp ./dotfiles/.zshrc ~

  git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

  echo "Please restart for changes to make effect"
}

aur_install
flatpak_install
asdf_install

exit
