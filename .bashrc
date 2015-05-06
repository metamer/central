#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export GPG_TTY=$(tty)
. ~/.bash_profile
