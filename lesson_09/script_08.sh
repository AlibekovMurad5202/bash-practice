#!/bin/bash

# <symbol>+ - if <symbol> appears in the line at least once
# [...]+ - if any symbol from set ... appears in the line at least once
# .+ - there is one any symbol at least

echo "tet" | awk '/tes+t/ { print "test with 0 s:", $0 }'
echo "test" | awk '/tes+t/ { print "test with 1 s:", $0 }'
echo "tesst" | awk '/tes+t/ { print "test with 2 s:", $0 }'
echo "tessst" | awk '/tes+t/ { print "test with 3 s:", $0 }'
echo

echo "This is another test." | awk '/This.+test/ { print $0 }'
echo "Thistest." | awk '/This.+test/ { print $0 }'
echo

echo "
	st
	set
	sat
	seet
	seat
	saet
	saat
	seaet
" | awk '/s[ea]+t/ { print $0 }'
