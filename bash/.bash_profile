[[ -r ~/.bashrc ]] && . ~/.bashrc

# shortcuts -- convenience
alias ls='ls -G'
alias vim='nvim'
alias gs='git status'
alias mouse-accel-off='defaults write .GlobalPreferences com.apple.mouse.scaling -1'
alias mouse-accel-on='defaults write .GlobalPreferences com.apple.mouse.scaling 2'
alias check-mouse-accel='defaults read .GlobalPreferences com.apple.mouse.scaling'
alias vis='cd ~/Sandbox/proj-visualizer/signaligner'

# cURL for timing
function curl-t() {
    curl -w "@${HOME}/dotfiles/curl/format-timing.txt" -o /dev/null -s "$@";
}

# shortcuts -- school
alias k='ssh -Y ryandrew@login.khoury.neu.edu'

# loading things with environment variables

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH" # This makes yarn globals executable


# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"
