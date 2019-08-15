[[ -r ~/.bashrc ]] && . ~/.bashrc

# shortcuts -- convenience
alias ls='ls -G'
alias vim='nvim'
alias gs='git status'

# cURL for timing
function curl-t() {
    curl -w "@${HOME}/dotfiles/curl/format-timing.txt" -o /dev/null -s "$@";
}

# shortcuts -- work
alias o='cd ~/Orbit'

# loading things with environment variables

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH" # This makes yarn globals executable

