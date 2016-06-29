##
# ~/.bashrc: executed by bash(1) for non-login shells.
#
# For the original version, see /etc/skel/.bashrc
#
# written: 6 January, 2009 by Egan McComb
#
# revised: 7 November, 2009 by author
##

# If not running interactively, don't read preferences.
[ -z "$PS1" ] && return

# History settings.
HISTCONTROL=erasedups:ignorespace
HISTFILE=""
#HISTFILESIZE=2000
HISTSIZE=500
shopt -s histappend
shopt -s histreedit

# Input settings.
shopt -s cdspell dirspell
shopt -s no_empty_cmd_completion

# Globbing settings.
shopt -s extglob globstar

# Check window size after command.
shopt -s checkwinsize

_dir_chomp () {
	local p=${1/#$HOME/\~} b s
	s=${#p}
	while [[ $p != "${p//\/}" ]]&&(($s>$2))
	do
		p=${p#/}
		[[ $p =~ \.?. ]]
		b=$b/${BASH_REMATCH[0]}
		p=${p#*/}
		((s=${#b}+${#p}))
	done
	echo ${b/\/~/\~}${b+/}$p
}

. /usr/share/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Command prompts.
PS1='\[\033[G\]egan@occhio:$(_dir_chomp "$(pwd)" 35)$(__git_ps1 " (%s)")\$ '

# Check for clobber.
#set -o noclobber

# Includes.
[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases
[ -f $HOME/.dircolors ] && eval $(dircolors -b $HOME/.dircolors)
[ -f $HOME/bin/bashmarks.sh ] && . $HOME/bin/bashmarks.sh
