scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 5% -scale 2000% /tmp/screen_locked.png
cmus-remote -U
i3lock -i /tmp/screen_locked.png -n; cmus-remote -u; rm /tmp/screen_locked.png
