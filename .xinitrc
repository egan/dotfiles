xrdb -merge ~/.Xresources
xset s 3600 3600
urxvtd -q -o -f &> /dev/null
xmodmap ~/.xmodmaprc
#unclutter -noevents -root -idle 0 &
xmobar &
exec spectrwm &> ~/.spectrwm.log
