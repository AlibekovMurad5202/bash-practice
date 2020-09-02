#!/bin/bash
# IFS (Internal Field Separator)

myfile=script_1
IFS=$'\n''f'

for var in $(cat $myfile)
do
	echo "[ $var ]"
done