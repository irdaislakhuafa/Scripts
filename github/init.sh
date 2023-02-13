alias github-token='cat /media/My_Drive/Kelas\ Terbuka/Account.Me | grep _ '
alias gprchecks='gh pr checks --watch $1'

ghprout() {
	list="$(gh pr list)"
	prID="$(echo $list | fzf | awk '{print $1}')"
	gh pr checkout $prID
}

