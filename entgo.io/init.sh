CURRENT_SHELL="$(basename $(echo $SHELL))"

if [ -f "$MY_SCRIPTS/entgo.io/$CURRENT_SHELL.sh" ]; then
	source "$MY_SCRIPTS/entgo.io/$CURRENT_SHELL.sh"
fi
