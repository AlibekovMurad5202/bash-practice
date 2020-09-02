#!/bin/bash

# printf
# 	%i or %d - decimal integer
# 	%e - exponential form
#	%f - float
#	%g - shortest form (exponential or float)
#	%o - octal
#	%c - ASCII-code
#	$s - string

echo | awk 'BEGIN { x = 100; s = "string" }
{
	printf "Result: %i \n", x
	printf "Result: %d \n", x
	printf "Result: %e \n", x
	printf "Result: %f \n", x
	printf "Result: %g \n", x
	printf "Result: %o \n", x
	printf "Result: %c \n", x
	printf "Result: %s \n", s
}'