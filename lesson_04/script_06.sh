#!/bin/bash

exec 3<&0
exec 0< script_1
count=1
while read line
do
	echo "Line #$count: $line"
	count=$(( $count + 1 ))
done

exec 0<&3
read -p "Are you done now? " answer
case $answer in
	y) echo "Goodbye" ;;
	n) echo "Sorry, this is the end." ;;
esac