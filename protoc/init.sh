# golang proto compile
goprocom() {
	protoc \
		--proto_path="$protodir" \
		--go_out="$protodir" \
		--go-grpc_out="$protodir" \
		"$protodir"/*.proto
}

# procto compile
procom() {
	lang="$1"
	if [ "$protodir" = "" ]; then
		echo 'variable $protodir is empty'
		return
	fi

	if ! [ -d "$protodir" ]; then
		echo "dir '$protodir' is not found"
		return
	fi

	if [ "$lang" = "" ]; then
		echo "language as args 1 is required"
		return
	fi

	if [ "$lang" = "go" ]; then
		goprocom
	else
		echo "language '$lang' is not supported"
		return
	fi
}
