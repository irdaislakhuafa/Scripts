getDevice() {
	dev=`iwctl device list | grep station | awk '{print$2}'`
	echo "$dev"
}

alias wscan='iwctl station $(getDevice) scan'
alias dlist='iwctl device list'
alias wlist='wscan && iwctl station $(getDevice) get-networks'
alias wlist-h='wscan && iwctl station $(getDevice) get-hidden-access-points'
alias wconnect='iwctl station $(getDevice) connect'
alias wconnect-h='iwctl station $(getDevice) connect-hidden'
alias wshow='iwctl station $(getDevice) show'
alias rwd='rsm restart iwd'
alias wdisconnect='iwctl station $(getDevice) disconnect'
alias won="doas wifi on"
alias wof="doas wifi off"
