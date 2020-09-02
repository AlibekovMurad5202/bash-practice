#!/bin/bash

# some numeric functions:
# 	cos(x)    (x in radians)
# 	sin(x)    (x in radians)
#	exp(x)
#	int(x) - integer part of x
#	log(x)
#	sqrt(x)
#	rand()    (returns float in [0; 1))
# 	atan2(y, x)    (returns arctangent of y / x in radians)

echo | awk 'BEGIN { 
	print "cos(1) = " cos(1)
	print "sin(1) = " sin(1)
	print "exp(5) = " exp(5)
	print "integer part of 5.11 = " int(5.11)
	print "ln(5) = " log(5)
	print "sqrt(5) = " sqrt(5)
	print "random number in [0; 10) = " 10 * rand()
	print "pi = " atan2(0, -1)
}'