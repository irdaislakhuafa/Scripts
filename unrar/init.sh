temp_unrar() {
	archive_file="$1"

	if ! [ -n "$archive_file" ]; then
		echo "Nothing do because no parameter"
		return 0
	elif [ "$archive_file" = "here" ]; then
		archive_file="$(fzf)"

		if ! [ -n "$archive_file" ]; then
			echo "Nothing do because no parameter"
		fi
	fi

	echo "archive://$(pwd)/$archive_file|$(unrar lb $archive_file | fzf)"
}
