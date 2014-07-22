xmodmap ~/.xmodmaprc
synclient TouchpadOff=1
xmobar &
unclutter -noevents -root -idle 0 &
urxvtd -q -o -f &> /dev/null
#exec xmonad
exec spectrwm &> ~/.spectrwm.log
