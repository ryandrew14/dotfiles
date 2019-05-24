# ================
#  Install Script
#  -- general --
# ================

FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOT_DIR="$HOME/dotfiles"

if [ ! $DOT_DIR == $FILE_DIR ]; then
    echo "ERROR: Please move the dotfiles folder to your home directory."
    exit 1
fi

# symlink config files into correct directories
ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile
mkdir -p .config/nvim && ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

