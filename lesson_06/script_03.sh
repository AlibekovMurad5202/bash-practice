#!/bin/bash
# $? contains unsigned char value ([0; 255])

function foo {
	read -p "Enter a value: " value
	echo "adding value"
	return $(( $value + 10 ))
}

foo
echo "The new value is $?"
