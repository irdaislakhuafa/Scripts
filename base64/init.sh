b64enc() {
	args="$@"
	echo -n "$args" | base64 -i
}

b64dec() {
	args="$@"
	echo -n "$args" | base64 -d
}
