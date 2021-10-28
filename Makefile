default: .sorted

.sorted: Redirector.json
	jq --sort-keys . Redirector.json > Redirector.json.sorted
	mv Redirector.json.sorted Redirector.json
	touch $@
