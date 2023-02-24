alias github-token='cat /media/My_Drive/Kelas\ Terbuka/Account.Me | grep _ '
alias gprchecks='gh pr checks --watch $1'

ghprlect(){
	selected="$(gh pr list $@ | fzf --reverse | awk '{print $1}')"
	echo $selected
}

ghprx() {
	selected=$(ghprlect)
	if [ "$selected" = "" ]; then
		echo "Nothing do";
	else
		$@ $selected
	fi
}

ghprmx() {
	selected=$(ghprlect --state merged --limit 1000)
	if [ "$selected" = "" ]; then
		echo "Nothing do";
	else
		$@ $selected
	fi
}

alias ghprout='ghprx gh pr checkout'
alias ghprlose='ghprx gh pr close'
alias ghprdit='ghprx gh pr edit'
alias ghprv='ghprx gh pr view'
alias ghprm='ghprx gh pr merge'
alias ghprvm='ghprmx gh pr view'
alias ghprvmw='ghprmx gh pr view --web'
