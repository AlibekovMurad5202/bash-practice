#!/bin/bash

# special classes of symbols in BRE (POSIX Basic Regular Expression):
# [[:alpha:]] ~ [a-zA-Z]
# [[:alnum:]] ~ [a-zA-Z0-9]
# [[:digit:]] ~ [0-9]
# [[:upper:]] ~ [A-Z]
# [[:lower:]] ~ [a-z]
# [[:blank:]] - space or tab
# [[:punct:]] - punctuation mark
# [[:print:]] - any printable symbol
# [[:space:]] - whitespace symbol

echo "abc 123" | awk '/[[:alpha:]]/ { print "alpha" }'
echo "abc 123" | awk '/[[:alnum:]]/ { print "alnum" }'
echo "abc 123" | awk '/[[:digit:]]/ { print "digit" }'
echo "abc 123" | awk '/[[:upper:]]/ { print "upper" }'
echo "abc 123" | awk '/[[:lower:]]/ { print "lower" }'
echo "abc 123" | awk '/[[:blank:]]/ { print "blank" }'
echo "abc 123" | awk '/[[:punct:]]/ { print "punct" }'
echo "abc 123" | awk '/[[:print:]]/ { print "print" }'
echo "abc 123" | awk '/[[:space:]]/ { print "space" }'