#!/bin/bash
URL=https://github.com/YoNyeoSeok/dotfiles.git

sudo apt-get install -y git vim screen

git clone --bare $URL ~/.dotfiles.git
echo .dotfiles.git >> $HOME/.gitignore
git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME/ config --local status.showUntrackedFiles no
echo alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME/" >> $HOME/.bash_aliases