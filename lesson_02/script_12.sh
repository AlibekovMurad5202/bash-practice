#!/bin/bash

for (( val = 1; val < 15; val++ ))
do
	if [ $val -gt 5 ] && [ $val -lt 10 ]
	then
		continue
	fi
	echo "Iteration number: $val"
done