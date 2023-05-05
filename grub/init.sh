# control grub bootloader
alias edit-grub="$ACCESS nvim /etc/default/grub && update-grub"
alias edit-grub-r='edit-grub && reboot'
alias egrub='edit-grub'
alias egrubr='edit-grub-r'
alias update-grub='$ACCESS grub-mkconfig -o /boot/grub/grub.cfg'
