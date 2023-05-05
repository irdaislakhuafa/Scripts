LIMIT_BATTERY_PATH='/sys/class/power_supply/BAT0/charge_control_end_threshold'
#alias setcharge='doas setcharge'
alias cpuset='doas cpupower frequency-set --max'
setcharge() {
	value="$1"
	if [ "$value" = "limit" ]; then
		echo "Current limit: $(cat $LIMIT_BATTERY_PATH)"
	elif [ $value -lt 1 ] && [ $value -gt 100 ]; then
		echo "value must between 1 and 100";
		return 0;
	else
		doas chmod -Rv 777 $LIMIT_BATTERY_PATH
		echo $value > $LIMIT_BATTERY_PATH
		echo "Success"
	fi
}
