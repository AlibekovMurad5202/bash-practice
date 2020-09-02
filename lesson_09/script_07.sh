#!/bin/bash

# POSIX Extended Regular Expression (ERE)
# awk supports ERE
# sed doesn't support ERE

# <symbol>* - if <symbol> appears in the line either once or never
# [...]? - if any symbol from set ... appears in the line either once or never
# .? - if any symbol appears in the line either once or never

echo "tet" | awk '/tes?t/ { print "test with 0 s:", $0 }'
echo "test" | awk '/tes?t/ { print "test with 1 s:", $0 }'
echo "tesst" | awk '/tes?t/ { print "test with 2 s:", $0 }'
echo

echo "I like green color" | awk '/colou?r/ { print $0 }'
echo "I like green colour" | awk '/colou?r/ { print $0 }'
echo

echo "los" | awk '/los.?/ { print $0 }'
echo "lose" | awk '/los.?/ { print $0 }'
echo "lost" | awk '/los.?/ { print $0 }'
echo

echo "
	st
	set
	sat
	seet
	seat
" | awk '/s[ea]?t/ { print $0 }'
