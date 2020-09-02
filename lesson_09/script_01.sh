#!/bin/bash

# regular expressions are case-sensitive
# special symbols: .*[]^{}\/+?|()

echo "This is a test" | awk '/Test/ { print $0 }'
echo "This is a test" | awk '/test/ { print $0 }'
echo "This is a test 2 again" | awk '/test 2/ { print $0 }'
echo "There is 10$ on my pocket" | awk '/\$/ { print $0 }'
echo "\ is a special symbol" | awk '/\\/ { print $0 }'
echo "/ is a special symbol too" | awk '/// { print $0 }'
echo "/ is a special symbol too" | awk '/\// { print $0 }'
