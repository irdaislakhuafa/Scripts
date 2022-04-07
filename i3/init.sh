# mode GPU
alias gmode="if [ $(cat ~/.config/i3/mode) = 1 ]; then echo 'nvidia'; else echo 'intel'; fi"
alias egmode='nvim ~/.config/i3/mode'