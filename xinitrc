[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
xkbcomp -w9 ~/dotfiles/lafayette.xkb $DISPLAY
nitrogen --random --set-auto
exec dbus-launch i3
