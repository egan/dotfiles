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
alias pong='ping -c 4'
alias mkdir='mkdir -p'
alias sudo='sudo '

# Application aliases.
alias apropos='pless apropos'
alias aspell='aspell -x'
alias glint='lint msys2.lnt'
alias ipython='winpty ipython'
alias klint='lint armcc5.lnt'
alias plint='lint p2.lnt'
alias python='winpty python'
alias tline='lint tiarm.lnt'
alias vu='/usr/share/vim/vim74/macros/less.sh'

# Specialized aliases.
alias p2deploy='cp /c/Users/eganmccomb/Drive/firmware/P2-LB-V4/P2-LB/Phase2/binary/armv7a/cgt_ccs/am335x/MVU/application/Release/application_ti.bin /g/APP'
alias msdeploy='cp /c/Users/eganmccomb/Drive/firmware/MotorScope/Debug/MotorScope.exe //nx-server/Usershares/eganmccomb/builds/'
alias cclean='rm -rf ~/.adobe/* ~/.macromedia/* ~/.icedtea/* ~/.config/matplotlib/tex.cache/*'
alias cls='tput reset'
alias extip='curl -s ifconfig.me'
alias groot='cd $(git rev-parse --show-cdup)'
alias lclean='rm -f *.aux *.auxlock *.bbl *.bcf *.blg *.dvi *.fff *.idx *.ilg *.ind *.lof *.log *.lot *.nav *.out *.run.xml *.snm *.toc *.ttt'
alias mclean='find . -type d -exec chmod 744 {} \; && find . -type f -exec chmod 644 {} \;'
alias myip='ip addr show | grep -w inet | grep -v 127.0.0.1 | awk "{ print \$2 }" | cut -d / -f 1'
alias nettest='echo "Testing Connectivity:";ping -c 4 93.184.216.119;echo;echo "Testing Name Resolution:";ping -c 4 www.example.org'
alias putbin='rsync -avL --files-from=$HOME/.rsync/putbin ~/bin $HOME/w/src/egan/scripts'
alias putcfg='rsync -avL --files-from=$HOME/.rsync/putcfg ~ $HOME/w/src/egan/dotfiles/'
alias repitch='mplayer -af scaletempo=scale=1.0:speed=pitch -speed'
alias rscp='rsync -avz -e ssh'
alias sprunge='curl -sF "sprunge=<-" http://sprunge.us | tclip'
alias wotd='curl -s http://feeds.reference.com/DictionarycomWordOfTheDay | sed "/description.*:.*</!d; s/.*>\(.*\)<.*/\1/" | recode html..utf-8 | recode html..utf-8'

# Media aliases.

# Function aliases.
function up() { d=$(upstr.sh "$1") && cd "$d"; }
function down() { d=$(downstr.sh "$@") && cd "$d"; }
