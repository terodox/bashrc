EXTENSIONS=~/Extensions

# Ensure we can handle vim plugins
if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
    read -p "Would you like to download pathogen to load VIM plugins? [y/n] " -n 1
    echo 
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    fi
fi

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
