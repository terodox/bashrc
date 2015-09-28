EXTENSIONS=~/Extensions
# Load extensions
if [ -d "$EXTENSIONS/nvm" ]; then
    . $EXTENSIONS/nvm/nvm.sh
    $EXTENSIONS/nvm/nvm.sh
fi

# Load workstation-specific customizations
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
