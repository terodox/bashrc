BASHRC_DIR=~/.bashrc.d/

source_bashrc_dir() {
    for bashrc in $(ls -A1 $BASHRC_DIR)
    do
        source $BASHRC_DIR/$bashrc
    done
}

source_bashrc_dir $BASHRC_DIR
