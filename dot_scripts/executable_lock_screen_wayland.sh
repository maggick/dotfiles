#grim /tmp/screen_locked.png
#convert /tmp/screen_locked.png -scale 5% -scale 2000% /tmp/screen_locked_.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause
#swaylock -i /tmp/screen_locked_.png -n
hyprlock
#rm /tmp/screen_locked.png
#rm /tmp/screen_locked_.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play
