#!/bin/bash

function add {
	if [ $# -eq 0 ] || [ $# -gt 2 ]
	then
		echo -1
	elif [ $# -eq 1 ]
	then 
		echo $(( $1 + $1 ))
	else
		echo $(( $1 + $2 ))
	fi
}

echo -n "Adding 10 and 15: "
value=$(add 10 15)
echo $value

echo -n "Adding one number: "
value=$(add 10)
echo $value

echo -n "Adding no numbers: "
value=$(add)
echo $value

echo -n "Adding three numbers: "
value=$(add 10 15 20)
echo $value