echo "Installing Packages"
echo "Installing ZSH..."
pkg install zsh

echo
echo "Installing Neovim..."
pkg install neovim

echo "Installing GNU Stow"
pkg install stow

echo
echo "Installing Tmux..."
pkg install tmux

echo
echo "Installing Pyhton..."
pkg install python

echo
echo "Installing Exa"
pkg install exa

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
