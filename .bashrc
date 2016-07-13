BASHRC_DIR=~/.bashrc.d/

for bashrc in $(ls -A1 $BASHRC_DIR)
do
    source $BASHRC_DIR/$bashrc
done
