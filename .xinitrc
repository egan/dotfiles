xmodmap ~/.xmodmaprc
synclient TouchpadOff=1
xmobar &
unclutter -idle 1 &
urxvtd -q -o -f &> /dev/null
exec xmonad
