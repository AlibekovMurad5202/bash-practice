#!/bin/bash

function foo {
	local temp=5
	echo "The 'temp' from inside function is $temp"
}

temp=4
foo
echo "The 'temp' from outside is $temp"
