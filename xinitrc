exec i3
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -load ~/.Xresources
