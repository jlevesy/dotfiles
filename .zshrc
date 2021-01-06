export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="hypercontent"
plugins=(git archlinux systemd docker golang kubectl aws)

export EDITOR=nvim
export VISUAL=nvim

export GPG_TTY=$(tty)

export GOPATH=$HOME/Code
export GOBIN=$GOPATH/bin
export GO111MODULES=on

export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

export npm_config_prefix=~/.node_modules

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.node_modules/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
[[ -r "/bin/rbenv" ]] && eval "$(rbenv init -)"

alias vi=nvim
alias vim=nvim
alias sl=ls
alias b="gh repo view --web"
alias tree="ls --tree -A --blocks name"
alias open="xdg-open"
alias ip='ip --color'
alias ipb='ip --color --brief'
alias ls='lsd -a1l'
alias cat=bat

if [ -e ~/.specific.zshrc ]; then
  source ~/.specific.zshrc
fi

export BUNDLE_GITHUB__COM=x-access-token:$GITHUB_TOKEN
