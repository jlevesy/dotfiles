export ZSH=/Users/jlevesy/.oh-my-zsh
ZSH_THEME="hypercontent"
plugins=(git brew docker golang kubectl aws)

export EDITOR=nvim
export VISUAL=nvim

export GPG_TTY=$(tty)

export GOPATH=$HOME/Code
export GOBIN=$GOPATH/bin
export GO111MODULES=on
export SSH_AUTH_SOCK=/Users/jlevesy/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

# export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

export npm_config_prefix=~/.node_modules

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.node_modules/bin:$PATH"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[[ -r "/Users/jlevesy/.bin/z.sh" ]] && source /Users/jlevesy/.bin/z.sh

alias vi=nvim
alias vim=nvim
alias sl=ls
alias b="gh repo view --web"
alias tree="ls --tree -A --blocks name"
alias ip='ip --color'
alias ipb='ip --color --brief'
alias ls='lsd -a1l'
alias cat=bat

if [ -e ~/.specific.zshrc ]; then
  source ~/.specific.zshrc
fi
