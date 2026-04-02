#!/bin/sh
#|
#| File     : ~/.deploy.sh
#| Author   : Matthieu Keller
#| Source   : https://github.com/maggick/dotFiles
#| Licence  : WTFPL
#| Created  : the 14 February 2014
#|

rm ~/.bashrc
ln -s ~/dotfiles/bashrc ~/.bashrc
rm ~/.bash_profile
ln -s ~/dotfiles/bash_profile ~/.bash_profile
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
rm ~/.inputrc
ln -s ~/dotfiles/inputrc ~/.inputrc
rm ~/.Xresources
ln -s ~/dotfiles/Xresources ~/.Xresources
rm ~/.Xdefaults
ln -s ~/.Xresources ~/.Xdefaults
rm ~/.minttyrc
ln -s ~/dotfiles/minttyrc ~/.minttyrc
mkdir -p ~/.urxvt/ext/
rm ~/.urxvt/ext/clipboard
rm ~/.urxvt/ext/font-size
ln -s ~/dotfiles/urxvt/ext/clipboard ~/.urxvt/ext/clipboard
ln -s ~/dotfiles/urxvt/ext/font-size ~/.urxvt/ext/font-size
rm ~/.xinitrc
ln -s ~/dotfiles/xinitrc ~/.xinitrc
mkdir ~/.i3
rm ~/.i3/config
rm ~/.i3/i3status
ln -s ~/dotfiles/i3/i3.config ~/.i3/config
ln -s ~/dotfiles/i3/i3status ~/.i3status.conf
ranger --copy-config=all

# install vim-plug for neovim plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# timewarrior config
mkdir ~/.timewarrior/
ln -s ~/dotfiles/timewarrior/timewarrior.cfg ~/.timewarrior/timewarrior.cfg
