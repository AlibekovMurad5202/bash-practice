#!/bin/bash

# | - logical 'OR'

echo "This is a test" | awk '/test|exam/ { print $0 }'
echo "This is an exam" | awk '/test|exam/ { print $0 }'
echo "This is something else" | awk '/test|exam/ { print $0 }'
