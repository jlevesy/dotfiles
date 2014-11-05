export TERMINAL=termite
export BROWSER=firefox-developer-edition
export SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/ssh-agent.socket

if [ -e ~/.specific.zprofile ]; then
  source ~/.specific.zprofile
fi
