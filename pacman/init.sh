alias pac='doas pacman'
alias t='trizen'
alias p='pac'
alias :v='t'
alias fix='srm /var/lib/pacman/db.lck'
alias rmp='p -Rcnsuv'
alias vcp='doas downgrade'
alias rmpac='p 2> /dev/null; rmp $(pacman -Qsqq | fzf -m 10000)'
