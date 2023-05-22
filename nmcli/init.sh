alias nmcli_dev_wifi_list='nmcli dev wifi list'
alias nmcli_dev_wifi_rescan='nmcli dev wifi rescan'

nmcli_get_ssid() {
	ssid="$(nmcli_dev_wifi_list | fzf | awk '{print $1}')"
	echo "$ssid"
}

nmcli_dev_wifi_connect() {
	ssid="$(nmcli_get_ssid)"; 
	if [ "$ssid" = "*" ]; then 
		echo "Already connected to here."; 
	elif [ "$ssid" = "" ]; then 
		echo "Nothing do."; 
	else 
		echo $@
		nmcli dev wifi connect "$ssid" $@
	fi
}

