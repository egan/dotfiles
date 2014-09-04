xmonad.hs
==================
Fully functional xmonad configuration with focus-follows-mouse and 
mouse-follows-focus. Includes status bar (xmobar), run dialog, and workspace 
working directories. Also includes control for mplayer via named pipe.

Uses urxvtc as terminal emulator, profont for text display. Floats Animate, 
Gimp, Mplayer, XMessage, and Firefox Preferences. Requires dpmstoggle.sh, turl, 
and xmobar-nettoggle.sh, available in scripts repository.

	M-z		Run command.
	M-Z		Set working directory.
	M-b		Toggle status bar.
	M-x		Spawn terminal emulator.
	M-X		Spawn terminal multiplexer (tmux).
	M-v		Spawn editor (vim).
	M-V		Spawn graphical editor (gvim).
	M-`		Toggle between two workspaces.
	M-i		Spawn web browser (dwb).
	M-I		Spawn secondary web browser (firefox).
	M-p		Spawn pdf reader (zathura).
	M-P		Open newest pdf file in ~/var.
	M-{U,D,L,R}	Move floating window up, down, left, right.
	M-S-{U,D,L,R}	Resize floating window up, down, left, right.
	M-{F1}		Blank screen.
	M-S-{F1}	Disable screen blanking.
	M-{Insert}	Shorten URL in clipboard with tinyurl. Requires turl from scripts.

Media keys work via amixer and mplayer.

