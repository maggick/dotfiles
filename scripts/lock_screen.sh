scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 5% -scale 2000% /tmp/screen_locked_.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause
i3lock -i /tmp/screen_locked_.png -n
rm /tmp/screen_locked.png
rm /tmp/screen_locked_.png
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play
