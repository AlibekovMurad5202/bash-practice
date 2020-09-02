#!/bin/bash

function print_new_arr {
	local new_arr=("$@")
	echo "The new array value is: ${new_arr[@]}"
}

arr=( 1 2 3 4 5 )
echo "The original array is ${arr[@]}"
print_new_arr ${arr[@]}
