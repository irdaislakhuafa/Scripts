alias blue='bluetoothctl'
bluedevlist() {
	device="$(blue devices | fzf --reverse | awk '{print $2}')"
	echo "$device"
}

alias bluescon='blue scan on'
alias bluescoff='blue scan off'
alias bluedison='blue discoverable on'
alias bluedisoff='blue discoverable off'
alias bluepair='blue pair $(bluedevlist)'
alias bluecapair='blue cancel-pairing $(bluedevlist)'
alias blueinfo='blue info $(bluedevlist)'
alias blueconn='blue connect $(bluedevlist)'
alias bluedisc='blue disconnect $(bluedevlist)'
alias bluebl='blue block $(bluedevlist)'
alias blueubl='blue unblock $(bluedevlist)'
alias blueadv='blue advertise'
alias bluepon='blue power on'
alias bluepoff='blue power off'
alias bluepairbl='blue pairable'
alias bluegent='blue agent'
alias bluedevrm='blue remove $(bluedevlist)'
alias bluetrust='blue trust $(bluedevlist)'
alias blueuntrust='blue untrust $(bluedevlist)'
