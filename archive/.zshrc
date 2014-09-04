#
# ~/.zshrc: executed by zsh(1) for non-login shells
#
# written: 8 July, 2010 by Egan McComb
#

# Functions.
autoload -Uz compinit
compinit

# History settings.
HISTFILE=~/.zsh_history
HISTSIZE=500
SAVEHIST=2000
setopt appendhistory
setopt histignoredups
setopt histignorespace
setopt histreduceblanks

# cd settings.
setopt autocd
setopt autopushd pushdignoredups pushdminus pushdsilent pushdtohome
setopt cdablevars
setopt chaselinks

# Globbing settings.
setopt extendedglob
setopt nomatch
setopt numericglobsort

# Input settings.
setopt correctall
setopt interactivecomments

# Don't clobber existent files.
setopt noclobber

# Job control settings.
setopt notify
unsetopt bgnice

# Zle settings.
bindkey -v
unsetopt beep

# Completion settings.
setopt completealiases
setopt menucomplete
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:approximate:' max-errors 2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select

# Command prompts.
PROMPT="%n@%m:%~$ "

# Variables.
export EDITOR="vim"
export PAGER="less"
export PATH="${PATH}:${HOME}/bin"
export VISUAL="$EDITOR"

# Includes.
if [[ -f $HOME/.zsh_aliases ]]; then
	. $HOME/.zsh_aliases
fi
if [[ -x /bin/dircolors ]]; then
	eval `dircolors -b $HOME/.dircolors`
fi
