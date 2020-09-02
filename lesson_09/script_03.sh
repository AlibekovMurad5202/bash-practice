#!/bin/bash

# !/^$/ ... - if the line isn't empty
# . - any symbol except '\n'

# --------- create myfile -----------
echo "this is a test
This is another test

start with this
finished." >> myfile
#echo "this is a test" >> myfile
#echo "This is another test" >> myfile
#echo "" >> myfile
#echo "start with this" >> myfile
#echo "finished." >> myfile
# -----------------------------------

awk '!/^$/ { print $0 }' myfile
echo
awk '/.st/ { print $0 }' myfile

# --------- remove myfile -----------
rm myfile
# -----------------------------------
