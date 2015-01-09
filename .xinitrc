xrdb -merge ~/.Xresources
urxvtd -q -o -f &> /dev/null
xmodmap ~/.xmodmaprc
xmobar &
exec spectrwm &> ~/.spectrwm.log
