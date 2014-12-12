xrdb -merge ~/.Xresources
urxvtd -q -o -f &> /dev/null
xmodmap ~/.xmodmaprc
#unclutter -noevents -root -idle 0 &
xmobar &
exec spectrwm &> ~/.spectrwm.log
