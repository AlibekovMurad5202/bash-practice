#!/bin/bash
# $ ./script_6 <first_value> <second_value>

function add {
	echo $(( $1 + $2 ))
}

if [ $# -eq 2 ]
then
	value=$(add $1 $2)
	echo "The result is $value"
else
	echo "Usage: add a b"
fi