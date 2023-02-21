alias day='curl wttr.in/id'

tf() {
	file="$1"
	curl --progress-bar \
		--upload-file "$file" \
		--url "https://transfer.sh/$file"
}
