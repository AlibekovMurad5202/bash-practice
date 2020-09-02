#!/bin/bash
# $ ./script_9 -a -b -c -d

while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) echo "Found the -b option" ;;
		-c) echo "Found the -c option" ;;
		*) echo "$1 isn't an option" ;;
	esac
	shift
done