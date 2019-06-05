[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
xkbcomp -w9 ~/dotfiles/lafayette.xkb $DISPLAY
nitrogen --restore
exec i3
