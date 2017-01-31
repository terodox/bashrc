IFTTT_API_KEY_CONFIG=~/.ifttt-api-key

export IFTTT_KEY=$(if [ -f $IFTTT_API_KEY_CONFIG ]; then cat $IFTTT_API_KEY_CONFIG; fi)

# Add the current folder to path
export PATH=$(dirname $BASH_SOURCE):$PATH
