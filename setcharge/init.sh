#alias setcharge='doas setcharge'
alias cpuset='doas cpupower frequency-set --max'
setcharge() {
	value="$1"
	if [ $value -lt 1 ] && [ $value -gt 100 ]; then
		echo "value must between 1 and 100";
		return 0;
	else
		echo $value > /sys/class/power_supply/BAT0/charge_control_end_threshold
	fi
}
