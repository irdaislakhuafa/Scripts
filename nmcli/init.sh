WIFI_NO_PASSWORD_PROVIDED="Error: Connection activation failed: Secrets were required, but not provided."
alias nmcli_dev_wifi_list='nmcli dev wifi list'
alias nmcli_dev_wifi_rescan='nmcli dev wifi rescan'

nmcli_get_ssid() {
	ssid="$(nmcli_dev_wifi_list | fzf)"
	echo "$ssid"
}

nmcli_dev_wifi_connect() {
	selected="$(nmcli_get_ssid)"
	ssid="$( echo $selected | awk '{print $1}')"; 
	if [ "$ssid" = "*" ]; then 
		echo "Already connected to here."; 
	elif [ "$ssid" = "" ]; then 
		echo "Nothing do."; 
	else 
		result="$(nmcli dev wifi connect $ssid $@ 2>&1)"
		if [ "$result" = "$WIFI_NO_PASSWORD_PROVIDED" ]; then
			echo -n "Password: ";
			read -n password;
			nmcli dev wifi connect $ssid password "$password" $@
		fi
	fi
}

