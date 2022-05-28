# my custom variables
MY_HOME="/home/artix"
MY_SCRIPTS="$MY_HOME/Scripts"

for directory in $MY_SCRIPTS/*; do source $directory/init.sh 2> ~/.cache/not_dir; done
