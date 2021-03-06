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
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export GREP_COLOR="1;31"
export GTK_IM_MODULE="xim"
export PAGER="less"
export PASSWORD_STORE_X_SELECTION="primary"
export PASSWORD_STORE_CLIP_TIME="15"
export PATH=$HOME/bin:$HOME/bin/.launch:$GEM_HOME/bin:$PATH
export VISUAL=$EDITOR
