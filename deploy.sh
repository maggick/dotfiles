#!/bin/sh

rm ~/.vimrc
rm ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/bashrc ~/.bashrc
mkdir -p ~/.vim/undodir/
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
rm ~/.bash_profile
ln -s ~/dotfiles/bash_profile ~/.bash_profile
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
rm ~/.inputrc
ln -s ~/dotfiles/inputrc ~/.inputrc
rm ~/.Xressources
ln -s ~/dotfiles/Xresources ~/.Xresources
ln -s ~/.Xresources ~/.Xdefaults
rm ~/.minttrc
ln -s ~/dotfiles/minttyrc ~/.minttyrc
mkdir -p ~/.urxvt/ext/
ln -s ~/dotfiles/urxvt/ext/clipboard ~/.urxvt/ext/clipboard
ln -s ~/dotfiles/urxvt/ext/font-size ~/.urxvt/ext/font-size
xkbcomp -w9 ~/dotfiles/lafayette.xkb $DISPLAY
xrdb -load ~/.Xresources
mkdir ~/.fonts/SourceCodePro
cp ~/dotfiles/fonts/SourceCodePro/* ~/.fonts/SourceCodePro/
ln -s ~/dotfiles/xinitrc ~/.xinitrc
