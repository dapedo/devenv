# Development environment

### `install.sh`

This script will install every package listed in the packages array.
Before the install it's necessary to have AUR enabled and yay (a AUR package manager) installed.
Now just run `bash install.sh` in the file directory. Sometimes it will request sudo permissions.

### First install yay

```shell
 pacman -Sq --needed --noconfirm git base-devel
 git clone https://aur.archlinux.org/yay.git ~/.yay
 cd ~/.yay && makepkg -si
 rm -rf ~/.yay
```

### Now the main packages

```shell
yay -Sq visual-studio-code-bin --needed --noconfirm
yay -Sq brave --needed --noconfirm
yay -Sq typora --needed --noconfirm
yay -Sq insomnia-bin --needed --noconfirm
yay -Sq docker --needed --noconfirm
yay -Sq docker-compose --needed --noconfirm
yay -Sq discord_arch_electron --needed --noconfirm
yay -Sq noto-fonts-emoji --needed --noconfirm
yay -Sq font-manager --needed --noconfirm
yay -Sq ttf-fira-code --needed --noconfirm # For vscode
yay -Sq nerd-fonts-fira-mono --needed --noconfirm # For terminal
```

### Others

```shell
yay wine
yay -S multilib/lib32-mpg123
```
