#!/bin/bash

var=5

while [ $var -gt 0 ]
do
	echo $var
	var=$(( $var - 1 ))
done