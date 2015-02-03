#!/bin/sh
#|
#| File     : ~/.deploy.sh
#| Author   : Matthieu Keller
#| Source   : https://github.com/maggick/dotFiles
#| Licence  : WTFPL
#| Created  : ?
#| Updated  : the 10 june 2014
#|

rm ~/.vimrc
rm ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/bashrc ~/.bashrc
mkdir -p ~/.vim/undodir/
mkdir -p ~/.vim/bak
mkdir -p ~/.vim/swp
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
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
xkbcomp -w9 ~/dotfiles/lafayette.xkb $DISPLAY
xrdb -load ~/.Xresources
rm ~/.xinitrc
ln -s ~/dotfiles/xinitrc ~/.xinitrc
mkdir ~/.i3
rm ~/.i3/config
rm ~/.i3/i3status
ln -s ~/dotfiles/i3/config ~/.i3/config
ln -s ~/dotfiles/i3/i3status ~/.i3status.conf
mkdir ~/.weechat
ln -s ~/dotfiles/weechat/weechat.conf ~/.weechat/weechat.conf
ranger --copy-config=all
rm ~/.config/ranger/colorschemes/solarized.py
rm ~/.config/ranger/rc.conf
ln -s  ~/dotfiles/config/ranger/colorschemes/solarized.py ~/.config/ranger/colorschemes/solarized.py
ln -s  ~/dotfiles/config/ranger/rc.conf ~/.config/ranger/rc.conf

