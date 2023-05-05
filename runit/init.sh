alias efunctions='edit /lib/rc/functions'
alias rsm='doas rsm'
alias sv='doas sv'
alias status='rsm status'
alias restart='rsm restart'
alias dis='rsm disable'
alias ena='rsm enable'
alias start='rsm start'
alias stop='rsm stop'
alias up='sv up'
alias down='sv down'

# to bios without presses F2 key
init="$(pstree -p | grep '(1)' | cut -d '(' -f 1)"
if [ "$init" = "runit" ]; then
	alias BIOS='loginctl reboot --firmware-setup'
elif [ "$init" = "systemd" ]; then
	alias BIOS="systemctl reboot --firmware-setup"
fi
alias bios='BIOS'

# control power
alias off='doas poweroff'
alias offf='off -f'
alias boot='doas reboot'
alias suspend='doas loginctl suspend'

