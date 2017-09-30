eval $(ssh-agent)

if [ -e ~/.specific.zprofile ]; then
  source ~/.specific.zprofile
fi

export TERMINAL=termite
export BROWSER=firefox-developer
