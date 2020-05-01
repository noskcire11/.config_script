#!/bin/bash

cd `dirname $0`
destination=~/
ln -sfv `pwd`/.script/.bash_logout $destination
ln -sfv `pwd`/.script/.bash_profile $destination
ln -sfv `pwd`/.script/.bashrc $destination
ln -sfv `pwd`/.script/.vimrc $destination
ln -sfv `pwd`/.script/.xinitrc $destination
ln -sfv `pwd`/.script/.bin $destination

destination=~/.vim/autoload
mkdir -p $destination
ln -sfv `pwd`/.script/plug.vim $destination

destination=~/.vim/
ln -sfv `pwd`/.script/coc-settings.json $destination

destination=~/.config/
mkdir -p $destination
ln -sfv `pwd`/.script/i3 $destination
ln -sfv `pwd`/.script/i3blocks $destination
ln -sfv `pwd`/.script/i3blocks-custom $destination
ln -sfv `pwd`/.script/i3status $destination
ln -sfv `pwd`/.script/termite $destination

destination=~/Pictures/
mkdir -p $destination
ln -sfv `pwd`/.wallpaper $destination

destination=~/.config/i3blocks-contrib
read -p 'clone or pull i3blocks-contrib? [y/N] ' input
if [ $input = 'y' ] || [ $input = 'Y' ]
then
	if [ -d $destination ]
	then
		cd $destination
		git pull
	else
		git clone https://github.com/vivien/i3blocks-contrib.git $destination
	fi
fi
