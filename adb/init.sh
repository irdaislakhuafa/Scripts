alias anu='adb shell pm uninstall --user 0'
alias ans='adb shell pm list package | cut -d ":" -f 2 | grep'
alias ani='adb install'
alias anl='adb devices'
alias anc='adb connect'
alias asu='anu $(ans $1)'
alias anpush='adb push'
alias anpull='adb pull'
alias anshell='adb shell'

adb_app_select() {
	listApks="$(ans "" | fzf --reverse -m 1000)"
	echo "$listApks"
}

anuop() {
	listApks=$(adb_app_select)
	if [ "$listApks" = "" ]; then
		echo "Nothing do"
		return 0
	fi
	
	array=( $(echo "$listApks") )

	for i in $array; do
		echo -n "Deleting $i... ";
		echo "$(anu $i)"
	done
}
