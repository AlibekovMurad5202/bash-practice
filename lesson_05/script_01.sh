#!/bin/bash

# trap "<command_1>; <command_2>; ...; <command_N>" <linux_signal>

trap "echo ' Trapped Ctrl+C'" SIGINT
echo "This is a test script"
count=1
while [ $count -le 10 ]
do
	echo "Loop #$count"
	sleep 1
	count=$(( $count + 1 ))
done