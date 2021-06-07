[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
xkbcomp -w9 ~/dotfiles/lafayette.xkb $DISPLAY
nitrogen --random --set-auto
pactl load-module module-echo-cancel
exec dbus-launch i3
