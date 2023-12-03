#!/usr/bin/bash

Packages=('zsh' 'neovim' 'stow' 'tmux' 'python' 'exa' 'bat' 'lazygit')

function install() {
  echo "Installing $1"
  pkg install $1
  echo
}

for packages in ${Packages[@]}; do
  install $packages
done

echo
echo "********************"

echo
echo "Installing tmuxp (tmux session manager)"
pip install --user tmuxp

echo
echo "Cloning dotfiles"
git clone https://github.com/pandas-id/termux-dotfile ~/dotfiles
cd ~/dotfiles
stow starship termux tmux zsh
