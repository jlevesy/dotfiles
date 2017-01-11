  export ZSH=/home/jlevesy/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git archlinux systemd rust cargo docker golang rvm virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration
alias vi=vim
alias sl=ls
alias b="hub browse"
alias screen-home="xrandr --output DP2 --auto --left-of eDP1"
alias laptop="xrandr --output DP2 --off"
alias lock="i3lock --color 000000"
alias reredshift="systemctl --user restart redshift"
alias firefox="firefox-nightly"
alias open="xdg-open"
alias documents="cd ~/Documents"
alias reloadrc="source ~/.zshrc"
alias github="cd ~/code/src/github.com"
alias jle="cd ~/code/src/github.com/jlevesy"

export EDITOR=vim
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.npm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:$HOME/bin"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

eval "$(rbenv init -)"
