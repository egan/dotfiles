#
# ~/.bash_aliases: sourced by .bashrc for user aliases and functions.
#
# written: 27 June, 2009 by Egan McComb
#

# Enable color and human friendly output.
alias ls='ls -hN --color=auto'
alias dir='dir -h --color=auto'
alias vdir='vdir -h --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias less='less -R'

# Essential flag aliases.
alias df='df -h'
alias dfind='find . -type d -name'
alias du='du -h'
alias dus='du -s'
alias dut='du -c'
alias ffind='find . -type f -name'
alias la='ls -a'
alias le='ls -la'
alias ll='ls -l'
alias lm='ll | less'
alias lr='ls -R'
alias lt='ll -rt'
alias lx='ll -BX'
alias lz='ll -rS'
alias llp='lp -o sides=two-sided-long-edge'
alias pong='ping -c 4'
alias tlp='lp -o page-bottom=36 -o page-left=36 -o page-right=36 -o page-top=36'
alias mkdir='mkdir -p'
alias sudo='sudo '

# Application aliases.
alias apropos='pless apropos'
alias aspell='aspell -x'
alias bm='elinks -config-file elinks-bm.conf $HOME/notes/net/bookmarks.html'
alias cdparanoia='cdparanoia -d /dev/sr0'
alias dict='pless dict'
alias epub2pdf='java -jar $HOME/src/epub2pdf/epub2pdf.jar'
alias exev='xev | grep -A2 --line-buffered "^KeyRelease" | sed -n "/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p"'
alias eprop="xprop | awk '/^WM_CLASS/{sub(/.* =/,\"instance:\");sub(/,/,\"\nclass:\");print}/^WM_NAME/{sub(/.* =/,\"title:\");print}'"
alias iptraf='sudo iptraf-ng'
alias kq='pkill --signal 9 qutebrowser'
alias maxima='rlwrap maxima'
alias news='newsbeuter -q'
alias quickdrop='quickserve --upload=.'
alias vu='/usr/share/vim/vim74/macros/less.sh'
alias weechat='exec weechat-curses'

# Specialized aliases.
alias cclean='rm -rf ~/.adobe/* ~/.macromedia/* ~/.icedtea/* ~/.config/matplotlib/tex.cache/*'
alias cls='tput reset'
alias extip='curl -s ifconfig.me'
alias getlogs='rsync -avz --delete -e ssh paijanne:$HOME/.weechat/logs/ $HOME/.weechat/logs/'
alias groot='cd $(git rev-parse --show-cdup)'
alias gsync='cd $HOME/var/grive && grive; cd - > /dev/null'
alias hibernate='sudo systemctl hibernate'
alias lclean='rm -f *.aux *.auxlock *.bbl *.bcf *.blg *.dvi *.fff *.idx *.ilg *.ind *.lof *.log *.lot *.nav *.out *.run.xml *.snm *.toc *.ttt'
alias mclean='find . -type d -exec chmod 755 {} \; && find . -type f -exec chmod 644 {} \;'
alias myip='ip addr show | grep -w inet | grep -v 127.0.0.1 | awk "{ print \$2 }" | cut -d / -f 1'
alias nettest='echo "Testing Connectivity:";ping -c 4 93.184.216.119;echo;echo "Testing Name Resolution:";ping -c 4 www.example.org'
alias ntpsync='sudo ntpd -qg'
alias putbin='rsync -avL --files-from=$HOME/.rsync/putbin ~/bin $HOME/code/share/scripts/'
alias putcfg='rsync -avL --files-from=$HOME/.rsync/putcfg ~ $HOME/code/share/dotfiles/'
alias putlogs='rsync -avz --delete -e ssh $HOME/.weechat/logs/ paijanne:$HOME/.weechat/logs/'
alias repitch='mplayer -af scaletempo=scale=1.0:speed=pitch -speed'
alias rscp='rsync -avz -e ssh'
alias sflush='sudo swapoff -a && sudo swapon -a'
alias scrsave='sleep 1 && xset s activate'
alias sprunge='curl -sF "sprunge=<-" http://sprunge.us | tclip'
alias suspend='sudo systemctl suspend'
alias usbmount='sudo mount -o rw,noauto,async,user,umask=1000'
alias wcurrent='wpa_cli -i wlan0 status | sed -n "s/^id_str=//p"'
alias wotd='curl -s http://feeds.reference.com/DictionarycomWordOfTheDay | sed "/description.*:.*</!d; s/.*>\(.*\)<.*/\1/" | recode html..utf-8 | recode html..utf-8'

# Media aliases.
alias augustine='sudo mount -o rw,noauto,async,user,umask=1000 /dev/disk/by-uuid/D941-3F25 /media/Augustine'
alias fin='encfs ~/docs/.fin ~/docs/fin'
alias ghost='sudo mount -o rw,noauto,async,user,umask=1000 /dev/disk/by-uuid/3469-33AC /media/Ghostbear'
alias kharkiv='sudo mount /dev/disk/by-uuid/d4d02146-f823-4a87-8618-d5b5e4e3efca /media/Kharkiv'
alias kindle='sudo mount -o rw,noauto,async,user,umask=1000 /dev/disk/by-uuid/452B-19F2 /media/Kindle'
alias loxodonta='sudo mount /dev/disk/by-uuid/2B2194F372B5C053 /media/Loxodonta'
alias mercury='sudo mount -o rw,noauto,async,user,umask=1000 /dev/disk/by-uuid/805D-07BD /media/Mercury'
alias pangolin='sudo mount /dev/disk/by-uuid/5CB2739EB2737AFA /media/Pangolin'
alias pekkl='sudo mount -o rw,noauto,async,user,umask=1000 /dev/disk/by-uuid/0128-FED0 /media/Pekkl'
alias uaugustine='sudo umount /media/Augustine'
alias ufin='fusermount -u ~/docs/fin'
alias ughost='sudo umount /media/Ghostbear'
alias ukharkiv='sudo umount /media/Kharkiv'
alias ukindle='sudo umount /media/Kindle'
alias uloxodonta='sudo umount /media/Loxodonta'
alias umercury='sudo umount /media/Mercury'
alias upangolin='sudo umount /media/Pangolin'
alias upekkl='sudo umount /media/Pekkl'

# Function aliases.
function up() { d=$(upstr.sh "$1") && cd "$d"; }
function down() { d=$(downstr.sh "$@") && cd "$d"; }
