#!/usr/bin/env bash

#This code was based on the Lunarvim project installer https://github.com/ChristianChiarulli/LunarVim

installubuntu() {
	sudo apt install nodejs npm curl git 
}

installarch() {
	sudo pacman -S --needed nodejs npm curl git python-pynvim
}

install() {
	[ -n "$(cat /etc/os-release | grep ubuntu)" ] && installubuntu
	[ -f "/etc/arch-release" ] && installarch
}

#Begin
echo 'Installing dotfiles'

# move old nvim directory if it exists
[ -d "$HOME/.config/nvim" ] && echo "Move your folder ~/.config/nvim before installing" && exit

echo "======Installing dependencies======"
install

echo "======Repository clone======"
git clone https://github.com/micaelviana/nvim ~/.config/nvim

printf "\n\n"

echo "======Cloning vim-plug======"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

printf "\n\n"

echo "======Opening nvim to install plugins======"
echo "======HOLD IT======"
nvim +PlugInstall +qall
