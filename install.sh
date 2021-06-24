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
declare -a flatpak_packages=("com.discordapp.Discord" "com.spotify.Client")

aur_install() {
  for pkg in ${aur_packages[@]}
    do
      yay ${pkg} -Sq --needed --noconfirm
    done
}

flatpak_install() {
  for pkg in ${flatpak_packages[@]}
    do
      flatpak install flathub com.spotify.Client
    done
}   

aur_install
flatpak_install

exit
