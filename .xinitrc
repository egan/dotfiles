xrdb -merge ~/.Xresources
xrandr --output DVI-0 --auto --output DVI-1 --auto --left-of DVI-0
urxvtd -q -o -f &> /dev/null
xmodmap ~/.xmodmaprc
xmobar &
dpmstoggle.sh
exec spectrwm &> ~/.spectrwm.log
