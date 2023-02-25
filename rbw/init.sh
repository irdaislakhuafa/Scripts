# bitwarden cli unofficial
rbwselect() {
	selected="$(rbw list --fields id,name,user,folder | fzf --reverse | awk '{print $1}')"
	echo "$selected"
}

alias rbwget='rbw get $(rbwselect)'
alias rbwhis='rbw history $(rbwselect)'
alias rbwdit='rbw edit $(rbwselect)'
alias rbwrm='rbw remove $(rbwselect)'

