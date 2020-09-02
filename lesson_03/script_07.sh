#!/bin/bash
# $ ./script_7 <first_parameter> <second_parameter> ...
# Difference between $* and $@

count=1
for param in "$*"
do
	echo "\$* Parameter #$count = $param"
	count=$(( $count + 1 ))
done
echo

count=1
for param in "$@"
do
	echo "\$@ Parameter #$count = $param"
	count=$(( $count + 1 ))
done
