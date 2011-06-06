#
# ~/.bash_aliases: sourced by .bashrc for user aliases and functions.
#
# written: 27 June, 2009 by Egan McComb
#

# Enable color and human friendly output.
alias ls='ls -h --color=auto'
alias dir='dir -h --color=auto'
alias vdir='vdir -h --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

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

# Application aliases.
alias apropos='pless apropos'
alias aspell='aspell -c -x'
alias dict='pless dict'
alias news='newsbeuter -q'

# Specialized aliases.
alias cclean='rm -rf ~/.adobe/* ~/.macromedia/* ~/.icedteaplugin/*'
alias cls='tput reset'
alias extip='curl ifconfig.me'
alias forecast='gweather -f'
alias iwscan='sudo iwlist wlan0 scan | piwlist.py'
alias lclean='rm -f *.aux *.bbl *.dvi *.idx *.ilg *.ind *.lof *.log *.lot *.nav *.out *.snm *.toc'
alias mclean='find . -type d -exec chmod 744 {} \; && find . -type f -exec chmod 644 {} \;'
alias myip='ifconfig | grep "inet addr:" | grep -v "127.0.0.1" | cut -d: -f2 | awk "{ print \$1 }"'
alias netopen='netstat --all --numeric --programs --inet'
alias nettest='echo "Testing Name Resolution:";ping -c 4 www.example.com;echo;echo "Testing Connectivity:";ping -c 4 192.0.32.10'
alias ntpsync='sudo ntpdate 0.us.pool.ntp.org'
alias scrsave='sleep 1 && xset s activate'
alias sprunge='curl -sF "sprunge=<-" http://sprunge.us | tclip'
alias sflush='sudo swapoff -a && sudo swapon -a'
alias weather='gweather -c'
alias wotd='curl -s http://feeds.reference.com/DictionarycomWordOfTheDay | sed "/description.*:.*</!d; s/.*>\(.*\)<.*/\1/"'

# Function aliases.
function up() { d=$(upstr.sh $1) && cd $d; }
function umv() { d=$(upstr.sh $2) && mv $1 $d; }
function ucp() { d=$(upstr.sh $2) && cp -R $1 $d; }
function down() { d=$(downstr.sh $1) && cd $d; }
function dmv() { downstr.sh $2 && read -sn 1 && mv -i $1 $(downstr.sh $2); }
function dcp() { downstr.sh $2 && read -sn 1 && cp -Ri $1 $(downstr.sh $2); }
