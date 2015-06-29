#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

syndaemon -i 0.7 -t -k &
xflux -l 40 -g -74
setxkbmap dvorak -option ctrl:nocaps
numlockx &
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
###LXDE
#exec startlxde
###xmonad
xsetroot -cursor_name left_ptr
xset +fp /usr/share/fonts/local
xset fp rehash
reloadWallpaper &> /dev/null
exec xmonad
#exec startlxde
