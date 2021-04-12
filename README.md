# Ambiente de Desenvolvimento

### Primeiro instalar o yay

```shell
 pacman -Sq --needed --noconfirm git base-devel
 git clone https://aur.archlinux.org/yay.git ~/.yay
 cd ~/.yay && makepkg -si
 rm -rf ~/.yay
```

### Agora os programas principais

```shell
yay -Sq visual-studio-code-bin --needed --noconfirm
yay -Sq brave --needed --noconfirm
yay -Sq typora --needed --noconfirm
yay -Sq insomnia-bin --needed --noconfirm
yay -Sq docker --needed --noconfirm
yay -Sq docker-compose --needed --noconfirm
yay -Sq discord_arch_electron --needed --noconfirm
```

### Frufrus adicionais

Suporte para emoji, e nerd fonts

```shell
yay -Sq noto-fonts-emoji --needed --noconfirm
yay -Sq ttf-fira-code --needed --noconfirm # For vscode
yay -Sq font-manager --needed --noconfirm
```

Nerd Font para terminal, baixar a Fira Mono Regular desse [Link do git](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fira%20Mono%20Regular%20Nerd%20Font%20Complete.otf) e instalar com font-manager.

Terminal mais lindo de todos

```shell
chsh -s $(which zsh) # zsh is now default, logout to make effect

# In zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

### Instalações manuais

```shell
yay wine
yay -S multilib/lib32-mpg123
```
