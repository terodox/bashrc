BASHRC_DIR=~/.bashrc.d/

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
