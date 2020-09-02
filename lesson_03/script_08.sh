#!/bin/bash
#          $ ./script_8 <first_parameter> <second_parameter> <third_parameter> ...
# before "shift": [ $0 ]       [ $1 ]             [ $2 ]            [ $3 ]     ...
#  after "shift": [ $0 ]      [ lost ]            [ $1 ]            [ $2 ]     ...

count=1
while [ -n "$1" ]
do
	echo "Parameter #$count = $1"
	count=$(( $count +1 ))
	shift
done