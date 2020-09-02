#!/bin/bash

trap "echo; echo 'Ctrl+C is trappped.'" SIGINT
count=1
while [ $count -le 5 ]
do
	echo "Loop #$count"
	sleep 1
	count=$(( $count + 1 ))
done

trap -- SIGINT
echo "I just removed the trap"
count=1
while [ $count -le 5 ]
do
	echo "Second Loop #$count"
	sleep 1
	count=$(( $count + 1 ))
done