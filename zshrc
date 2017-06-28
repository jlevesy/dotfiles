export ZSH=/home/jlevesy/.oh-my-zsh

ZSH_THEME="hypercontent"
plugins=(git archlinux systemd rust cargo docker golang rvm virtualenv)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias vi=vim
alias govim="vim -u ${HOME}/dotfiles/vim/go.vimrc"
alias sl=ls
alias b="hub browse"
alias screen-home="xrandr --output HDMI1 --auto --above eDP1"
alias screen-prez="xrandr --output DP2--auto --above eDP1"
alias laptop="xrandr --output HDMI1 --off"
alias laptop-vga="xrandr --output DP2 --off"
alias lock="i3lock --color 000000"
alias reredshift="systemctl --user restart redshift"
alias firefox="firefox-nightly"
alias open="xdg-open"
alias reloadrc="source ~/.zshrc"

alias documents="cd ~/Documents"
alias github="cd ~/code/src/github.com"
alias jle="cd ~/code/src/github.com/jlevesy"

export EDITOR=vim

export GOPATH=$HOME/code

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

export PATH="$HOME/.npm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export PATH="$HOME/bin:$PATH"

eval "$(rbenv init -)"
