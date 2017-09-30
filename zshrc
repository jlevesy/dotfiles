export ZSH=/usr/share/oh-my-zsh
export DOTFILES=/home/jlevesy/code/src/github.com/jlevesy/dotfiles

ZSH_THEME="hypercontent"
plugins=(git archlinux systemd rust cargo docker golang rvm virtualenv)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias vi=vim
alias govim="vim -u ${DOTFILES}/vim/go.vimrc"
alias phpvim="vim -u ${DOTFILES}/vim/php.vimrc"
alias sl=ls
alias b="hub browse"
alias screen-work="xrandr --output DP2 --auto --above eDP1"
alias screen-work-vertical="xrandr --output DP2 --auto --rotate left --right-of eDP1"
alias laptop="xrandr --output DP2 --off"
alias reredshift="systemctl --user restart redshift"
alias open="xdg-open"
alias reloadrc="source ~/.zshrc"

if [ -e ~/.specific.zshrc ]; then
  source ~/.specific.zshrc
fi

export EDITOR=vim
export GOPATH=$HOME/code
export GOBIN=$GOPATH/bin

# export WORKON_HOME=~/.virtualenvs
# source /usr/bin/virtualenvwrapper.sh

export PATH="$HOME/.npm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/bin:$PATH"

eval "$(rbenv init -)"
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
