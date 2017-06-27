ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}◒ "
ZSH_THEME_GIT_PROMPT_CLEAN=" "
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%}✓ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}△ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}➜ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%}▲ "

PROMPT='$(_hyper_content_user_host)$(_hyper_content_python_venv)$(_hyper_content_git_prompt_info)%{$fg[magenta]%}$(git_prompt_status)$(_hyper_content_timing)${_hyper_content_return_status}λ '

local _hyper_content_return_status="%{$fg[red]%}%(?..⍉ )%{$reset_color%}"

function _hyper_content_user_host() {
  echo "%{$fg[yellow]%}(${HOST##*/})%{$reset_color%} "
}

function _hyper_content_git_prompt_info() {
  echo "%{$fg[cyan]%}%c $(git_prompt_info)%{$reset_color%}"
}

function _hyper_content_python_venv() {
  if [[ $VIRTUAL_ENV != "" ]]; then
    echo "%{$fg[blue]%}(${VIRTUAL_ENV##*/})%{$reset_color%} "
  fi
}

function _hyper_content_preexec() {
  timer=$(($(date +%s%N)/1000000))
  export HYPER_CONTENT_TIMING=""
}

function _hyper_content_precmd() {
  if [ $timer ]; then
    now=$(($(date +%s%N)/1000000))
    elapsed=$(($now - $timer))
    export HYPER_CONTENT_TIMING="$elapsed"
  fi
  unset timer
}

function _hyper_content_timing() {
  if [ -n "$HYPER_CONTENT_TIMING" ]; then
    echo "%{$fg[red]%}(${HYPER_CONTENT_TIMING} ms)%{$reset_color%} "
  fi
}

precmd_functions+=(_hyper_content_precmd)
preexec_functions+=(_hyper_content_preexec)
