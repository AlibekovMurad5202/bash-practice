#!/bin/bash

# /^<filter>/ ... - if <filter> in the start of the line
# /<filter>$/ ... - if <filter> in the end of the line

echo "Welcome to my script" | awk '/^my/ { print $0 }'
echo "my script" | awk '/^my/ { print $0 }'

echo "Welcome to my script" | awk '!/^my/ { print $0 }'
echo "my script" | awk '!/^my/ { print $0 }'

echo "Welcome to my script too" | awk '/script$/ { print $0 }'
echo "Welcome to my script" | awk '/script$/ { print $0 }'

echo "Welcome to my script too" | awk '!/script$/ { print $0 }'
echo "Welcome to my script" | awk '!/script$/ { print $0 }'
