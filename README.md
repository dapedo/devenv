# Development environment

### `install.sh`

This script will install every package listed in the packages array.
Before the install it's necessary to have AUR enabled and yay (a AUR package manager) installed.
Now just run `bash install.sh` in the file directory. Sometimes it will request sudo permissions.

### Yay installation

```shell
 pacman -Sq --needed --noconfirm git base-devel
 git clone https://aur.archlinux.org/yay.git ~/.yay
 cd ~/.yay && makepkg -si
 rm -rf ~/.yay
```
