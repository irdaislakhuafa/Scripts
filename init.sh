# my custom variables
MY_SCRIPTS="$HOME/Scripts"

for directory in $MY_SCRIPTS/*; do source $directory/init.sh 2> ~/.cache/not_dir; done

# pfetch
pfetch

# tasks
task 2> /home/artix/.cache/task
