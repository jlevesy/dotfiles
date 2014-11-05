#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"
alias g="git"

EDITOR=/usr/bin/nvim
PS1='[\u@\h \W]\$ '
