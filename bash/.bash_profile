[[ -r ~/.bashrc ]] && . ~/.bashrc

# shortcuts -- convenience
alias ls='ls -G'
alias vim='nvim'
alias gs='git status'

# shortcuts -- work
alias p='cd ~/Paperless/paperless'
alias pup='docker-compose -f ~/Paperless/paperless/docker-compose.yml up -d'
alias pdown='docker-compose -f ~/Paperless/paperless/docker-compose.yml down'
alias bshell='docker-compose -f ~/Paperless/paperless/docker-compose.yml exec backend bash'
alias djshell='docker-compose -f ~/Paperless/paperless/docker-compose.yml exec backend python webservices/manage.py shell'
alias utenv='source ~/Paperless/uptime-tracking/uptime_env/bin/activate'
alias jenk='ssh ryan@jenkins.paperlessparts.com'

# loading things with environment variables

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
