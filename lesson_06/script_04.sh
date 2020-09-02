#!/bin/bash

function foo {
	read -p "Enter a value: " value
	echo $(( $value + 10 ))
}

result=$(foo)
echo "The value is $result"