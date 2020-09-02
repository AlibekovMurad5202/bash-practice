#!/bin/bash

function my_function {
	echo "This is an example of using a function"
}

count=1
while [ $count -le 3 ]
do
	my_function
	count=$(( $count + 1 ))
done
echo "This is the end of the loop"
my_function
echo "End of the script"
