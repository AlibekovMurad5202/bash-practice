#!/bin/bash

count=1
cat script_1 | while read line
do
	echo "Line $count: $line"
	count=$(( $count + 1 ))
done
echo "finished."