export IS_NVIDIA=true
if [ "$(tty)" = "/dev/tty1" ]; then
	if [ $IS_NVIDIA ]; then
		prime-run Hyprland
	else
		Hyprland
	fi
fi

usenvidia() {
	stat="$1"
	if [ "$stat" = "" ]; then
		echo "No parameter provided (true/false)"
		return
	else
		sed s/'IS_NVIDIA=true'/'IS_NVIDIA=false'/g -i $MY_SCRIPTS/hyprland/init.sh
	fi
}
