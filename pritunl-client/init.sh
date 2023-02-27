alias prc='pritunl-client'
alias prcs='pritunl-client-service'
alias prclect='echo $(pritunl-client list | fzf --reverse | cut -d "|" -f 2)'
alias prcstart='prc start $(prclect)'
