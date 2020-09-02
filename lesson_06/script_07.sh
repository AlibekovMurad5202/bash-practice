#!/bin/bash
# testing global variables

function add_10 {
	value=$(( $value + 10 ))
}

read -p "Enter a value: " value
add_10
echo "The new value is: $value"