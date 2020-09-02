#!/bin/bash
# $file must be in "", because $file can include spaces

path=$HOME/Desktop/bash

for file in $path/*
do
	if [ -d "$file" ]
	then
		echo "$(basename $file) is a directory"
	elif [ -f "$file" ]
	then
		echo "$(basename $file) is a file"
	fi
done

