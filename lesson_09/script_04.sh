#!/bin/bash

# [...] - if symbol in set ...
# example: [ab] - 'a' or 'b'
# example: [a-z] - symbol between 'a' and 'z'
# example: [a-fm-z] - symbol between 'a' and 'f' or between 'm' and 'z'
# example: [0-9] - integer in range [0; 9]

# [^...] - if symbol not in set ...
# example: [^ab] - not 'a' and not 'b'
# example: [^a-z] - symbol between 'a' and 'z'
# example: [^a-fm-z] - symbol between 'a' and 'f' or between 'm' and 'z'
# example: [^0-9] - integer in range [0; 9]

echo "This is a test" | awk '/[Tt]his/ { print $0 }'
echo "this is a test" | awk '/[Tt]his/ { print $0 }'
echo

echo "This is a test" | awk '/[^Tt]his/ { print $0 }'
echo "And his name is Test" | awk '/[^Tt]his/ { print $0 }'
echo

echo "123" | awk '/[0-9][0-9][0-9]/ { print $0 }'
echo "12a" | awk '/[0-9][0-9][0-9]/ { print $0 }'
echo

echo "123" | awk '/[0-9][0-9][^0-9]/ { print $0 }'
echo "12a" | awk '/[0-9][0-9][^0-9]/ { print $0 }'
echo

echo "123" | awk '/[0-9][0-9][0-28-9]/ { print $0 }'
echo "123" | awk '/[0-9][0-9][^0-28-9]/ { print $0 }'
echo

echo "12a" | awk '/[0-9][0-9][0-28-9]/ { print $0 }'
echo "12a" | awk '/[0-9][0-9][^0-28-9]/ { print $0 }'
echo