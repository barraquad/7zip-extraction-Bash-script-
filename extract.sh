#!/bin/bash

# barraquad @ 2026. Use at YOUR OWN RISK!

function extract_7z() {

	# We need to use newline as a field separator
	IFS_B=${IFS}
	IFS="
	"

	output=($(ls -1 *.7z))
	
	for i in "${output[@]}"; do
		7z x "$i" -o* -y
	
	done
	# '@' basically means multiple arguments(an array of elements, not just one)
	
	IFS=${IFS_B}
}

extract_7z

