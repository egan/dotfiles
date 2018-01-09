##
# ~/.bash_profile: executed by bash(1) for login shells.
#
# written: 27 July, 2010 by Egan McComb
##

# Includes.
. $HOME/.bashrc

# Variables.
export EDITOR="vim"
export ERR_NARGS=3
export ERR_VARGS=5
export GREP_COLOR="1;31"
export GTK_IM_MODULE="xim"
export PAGER="less"
export PASSWORD_STORE_X_SELECTION="primary"
export PASSWORD_STORE_CLIP_TIME="15"
# Include some Windows software directories.
PATH=/c/Anaconda3:/c/Anaconda3/Scripts:/c/Anaconda3/Library/bin:$PATH
PATH=/c/Program\ Files\ \(x86\)/MikTex\ 2.9/miktex/bin:$PATH
PATH=/c/Program\ Files/nodejs/:$PATH
PATH=/c/Keil_v5/UV4:$PATH
export PATH=/mingw64/bin:$PATH
export PATH=/mingw32/bin:$PATH
export PATH=$HOME/.gem/ruby/2.3.0/bin:$PATH
export PATH=$HOME/bin:$PATH
export VISUAL=$EDITOR
export VIMRUNTIME=/usr/share/vim/vim80
