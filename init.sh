# my custom variables
MY_SCRIPTS="$HOME/Scripts"
ACCESS='doas'

for directory in $MY_SCRIPTS/*; do source $directory/init.sh 2> /dev/null; done

# pfetch
pfetch

# tasks
task 2> /dev/null
