xrdb -merge ~/.Xresources
urxvtd -q -o -f &> /dev/null
xmodmap ~/.xmodmaprc
synclient TouchpadOff=1
unclutter -noevents -root -idle 0 &
xmobar &
exec spectrwm &> ~/.spectrwm.log
