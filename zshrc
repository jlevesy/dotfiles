ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
plugins=(git)

source $ZSH/oh-my-zsh.sh

#Overriding git_prompt_info
function git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function clean_docker_zombies() {
  docker images -f 'dangling=true' -q | xargs docker rmi
}

alias docker_stop_all=docker rm -f `docker ps -a -q`
alias docker_stop=docker rm -f `docker ps -q`
alias vi=vim
alias b="hub browse"

export EDITOR=vim

export PATH="$PATH:$HOME/.npm/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/bin:$PATH"
