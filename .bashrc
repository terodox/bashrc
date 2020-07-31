BASHRC_DIR=~/.bashrc.d/

dotfiles() {
    case "$1" in
        "upgrade" )
            _dotfiles_track
            pushd ~/ >> /dev/null
            git pull
            git submodule init
            git submodule update
            popd >> /dev/null
            _dotfiles_notrack
            ;;
        "notrack" )
            _dotfiles_notrack
            ;;
        "track" )
            _dotfiles_track
            ;;
        * )
            echo "Unknown option: $1"
            ;;
    esac
}

_dotfiles_notrack() {
    if [ -d ~/.git ]; then
        mv ~/.git ~/.git.inactive
    fi
}

_dotfiles_track() {
    if [ -d ~/.git.inactive ]; then
        mv ~/.git.inactive ~/.git
    fi
}

source_bashrc_dir() {
    for bashrc in $(ls -A1 $BASHRC_DIR)
    do
        source $BASHRC_DIR/$bashrc
    done
}

source_bashrc_dir $BASHRC_DIR

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/andrewdesmarais/.npm/_npx/30450/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/andrewdesmarais/.npm/_npx/30450/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/andrewdesmarais/.npm/_npx/30450/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/andrewdesmarais/.npm/_npx/30450/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/andrewdesmarais/.npm/_npx/30450/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/andrewdesmarais/.npm/_npx/30450/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
eval "$(thefuck --alias)"

export GPG_TTY=$(tty)
