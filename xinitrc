[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
exec i3
