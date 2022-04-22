# edit record screen file directory
alias drecord='nvim /home/artix/.config/i3/scripts/ffmpeg/directory'
alias rstf="ffmpeg -video_size $(xrandr | grep '*' | awk '{print$1}') -framerate 25 -f x11grab -i $DISPLAY"
