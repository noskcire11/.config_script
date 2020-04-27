#!/bin/bash

cd `dirname $0`

ln -sfv `pwd`/.script/.bash_logout ~/
ln -sfv `pwd`/.script/.bash_profile ~/
ln -sfv `pwd`/.script/.bashrc ~/
ln -sfv `pwd`/.script/.vimrc ~/
ln -sfv `pwd`/.script/.xinitrc ~/

mkdir -p ~/.config
ln -sfv `pwd`/.script/i3 ~/.config/
ln -sfv `pwd`/.script/i3blocks ~/.config/
ln -sfv `pwd`/.script/i3status ~/.config/
ln -sfv `pwd`/.script/termite ~/.config/

mkdir -p ~/.vim/autoload
ln -sfv `pwd`/.script/coc-settings.json ~/.vim/
ln -sfv `pwd`/.script/plug.vim ~/.vim/autoload/
