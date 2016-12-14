  export ZSH=/home/jlevesy/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git archlinux systemd rust cargo docker golang rvm virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

alias docker_stop_all=docker rm -f `docker ps -a -q`
alias docker_stop=docker rm -f `docker ps -q`
alias vi=vim
alias sl=ls
alias b="hub browse"
alias screen-home="xrandr --output DP2 --auto --left-of eDP1"
alias laptop="xrandr --output DP2 --off"

export EDITOR=vim
export PATH="$PATH:$HOME/.npm/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/bin:$PATH"
