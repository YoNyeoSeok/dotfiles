#!/bin/bash
URL=https://github.com/YoNyeoSeok/dotfiles.git

sudo apt-get install -y git vim screen

git clone --bare $URL ~/.dotfiles.git
echo .dotfiles.git >> ~/.gitignore
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME/'" >> $HOME/.bash_aliases
source ~/.bashrc
dotfiles config --local status.showUntrackedFiles no
