#!/bin/bash

# old versions of awk need option [ --re-interval ] for using {<S>,<E>}

# <symbol>{<N>} - if <symbol> appears in the line N times
# <symbol>{<S>,<E>} - if number of occurreces of <symbol> in range [S; E]
# [...]{<N>} - if any symbol from set ... appears in the line N times
# [...]{<S>,<E>} - if number of occurreces of any symbols from set ... in range [S; E]
# .{<N>} - there is N any symbols
# .{<S>,<E>} - if number of occurreces of any symbols in range [S; E]

echo "tet" | awk '/tes{1}t/ { print "test with 0 s:", $0 }'
echo "test" | awk '/tes{1}t/ { print "test with 1 s:", $0 }'
echo "tesst" | awk '/tes{1}t/ { print "test with 2 s:", $0 }'
echo

echo "This is another test." | awk '/This.{5,7}test/ { print $0 }'
echo "This is a test." | awk '/This.{5,7}test/ { print $0 }'
echo

echo "
	st
	set
	sat
	seet
	seat
	seaet
" | awk '/s[ea]{1,2}t/ { print $0 }'