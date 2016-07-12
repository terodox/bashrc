EXTENSIONS=~/Extensions

# Ensure we can handle vim plugins
if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
    read -p "Would you like to download pathogen to load VIM plugins? [y/n] " -n 1
    echo 
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    fi
fi

# Set bash prompt (Ubuntu's default is quite nice actually)
git_status_short() {
    ADDS=`trim $(git status -s | egrep "(\?\?|^ ?A)" | wc -l)`
    MODS=`trim $(git status -s | egrep "^ ?M" | wc -l)`
    REMS=`trim $(git status -s | egrep "^ ?D" | wc -l)`

    if [ $ADDS != 0 ] || [ $MODS != 0 ] || [ $REMS != 0 ]; then
        echo "(+$ADDS/^$MODS/-$REMS)"
    fi
}

trim() {
    echo $1
}

PROMPT_COMMAND='PS1="\u@\h:\w $(git_status_short)$ "'

# Load extensions
if [ -d "$EXTENSIONS/nvm" ]; then
    . $EXTENSIONS/nvm/nvm.sh
    $EXTENSIONS/nvm/nvm.sh
fi

PATH=$PATH:~/Extensions/ifttt-cli

# Load workstation-specific customizations
if [ -f $EXTENSIONS/Local/.bashrc ]; then
    . $EXTENSIONS/Local/.bashrc
fi
