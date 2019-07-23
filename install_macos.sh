# ================
#  Install Script
#   -- macos --
# ================

# call general install script
./install.sh

# TODO install Python3
# TODO install Yarn

# install homebrew (macOS package manager)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install useful packages via homebrew
brew install fzf # for fzf.vim
brew install ripgrep # better grep, used by fzf
brew install yarn
