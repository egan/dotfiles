Dotfiles
==================
These configuration files are used on all my Arch Linux installations. Some 
further editing may be required on foreign systems.

.config/
------------------
Configuration for some (mostly graphical) applications. See README.

.elinks/
------------------
Elinks profiles.

.local/
------------------
Need this to set default applications in mimeapps.list.

.mplayer/
------------------
Mplayer configuration. See README.

.mutt/
------------------
My mutt configuration for Gmail via IMAPS and SMTP.

.rsync/
------------------
File lists for rsync backups.

.urxvt/
------------------
Very nice urxvt plugins from <https://github.com/muennich/urxvt-perls>.

.weechat/
------------------
Basic weechat configuration.

.xmonad/
------------------
Fully functional xmonad configuration. See README.

.XCompose
------------------
Very nice XCompose file from <https://github.com/kragen/xcompose>.

.Xdefaults
-----------------
Enables URxvt plugins and specifies profont size 10. Uses firefox as web 
browser. NOTE: Change "USER" to reflect you, or the plugins will not work.

.aspell.en.pws
-----------------
Personal word list for aspell.

.bash\_aliases
------------------
Contains a variety of aliases to make the command line more user friendly. A few 
require scripts from my scripts repository. Many are idiosyncratic and won't be 
much use to others.

.bash\_profile
------------------
Sets some useful environment variables and loads ~/.bashrc. It might not be 
warranted to replace your local copy herewith. However, my other files assume 
this file is in use.

.bashrc
------------------
Spartan bash configuration, enabling some extended features and disabling 
history. May require slightly different paths to work on other operating 
systems. Merging this file with your local copy deliberately would be best.

.dircolors
------------------
Color definitions for ls. May require your $TERM to be added to header.

.inputrc
------------------
Enables vi readline mode, and improves tab completion.

.pentadactylrc
------------------
Basic pentadactyl configuration, as well as some useful mappings.

.rtorrent.rc
------------------
Basic rtorrent configuration.

.tmux.conf
------------------
Basic tmux configuration.

.vimrc
------------------
Fully featured vim configuration enabling all the useful features, with minimal 
mappings added.

.xinitrc
------------------
Basic xinit configuration. Disables touchpad and hides cursor. Runs xmodmap

.xmobarrc
------------------
Basic xmobar configuration to act as a status bar. Includes CPU use, CPU 
temperature, memory use, network use, speaker volume, battery percentage, 
current weather, and the time.

.xmodmaprc
------------------
Maps Caps Lock to Escape, and enables Compose on Right Alt.
