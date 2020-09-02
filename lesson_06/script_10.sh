#!/bin/bash

function factorial {
	local n=$1
	if [ $n -eq 1 ]
	then
		echo 1
	else
		echo $(( $n * $(factorial $(( $n - 1 ))) ))
	fi
}

read -p "Enter value: " value
result=$(factorial $value)
echo "$value! = $result"