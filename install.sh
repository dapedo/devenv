#!/usr/bin/bash

if ! command -v yay &> /dev/null
then
    echo -e "\e[1;31mYay could not be found.\e[0m"
    echo "Please install yay with the following commands:"
    echo "sudo pacman -S --needed git base-devel"
    echo "git clone https://aur.archlinux.org/yay.git ~/.yay"
    echo "cd ~/.yay && makepkg -si"
    echo "rm -rf ~/.yay"
    exit
fi

declare -a packages=("visual-studio-code-bin" "brave" "typora" 
"insomnia-bin" "docker" "docker-compose" "discord_arch_electron" 
"noto-fonts-emoji" "ttf-fira-code" "font-manager")

for pkg in ${packages[@]}
do
    yay ${pkg} -Sq --needed --noconfirm
done