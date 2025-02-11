#!/bin/bash

trap "echo; echo 'Ctrl+C is trapped.'" SIGINT
count=1
while [ $count -le 5 ]
do
	echo "Loop #$count"
	sleep 1
	count=$(( $count + 1 ))
done

trap "echo; echo 'I modified the trap!'" SIGINT
count=1
while [ $count -le 5 ]
do
	echo "Second Loop #$count"
	sleep 1
	count=$(( $count + 1 ))
done