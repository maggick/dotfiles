[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
xkbcomp -w9 ~/dotfiles/lafayette.xkb $DISPLAY
exec i3
