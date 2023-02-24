alias github-token='cat /media/My_Drive/Kelas\ Terbuka/Account.Me | grep _ '
alias gprchecks='gh pr checks --watch $1'
ghprlect(){
	selected="$(gh pr list | fzf --reverse | awk '{print $1}')"
	echo $selected
}
ghprout() {
	list="$(gh pr list)"
	prID="$(echo $list | fzf | awk '{print $1}')"
	gh pr checkout $prID
}
ghprlosep() {
	selected=$(ghprlect)

	if [ "$selected" = "" ]; then
		echo "Nothing do";
	else
		gh pr close $selected
	fi
}

