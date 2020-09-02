#!/bin/bash

val=1
while [ $val -lt 10 ]
do
	if [ $val -eq 5 ]
	then
		break;
	fi
	echo "Iteration: $val"
	val=$(( $val + 1 ))
done