#!/bin/bash

# to add text from file <r_file> after each line
# $ sed 'r <r_file>' <file_name>

# to add text from file <r_file> after line #N
# $ sed '<N>r <r_file>' <file_name>

# to add text from file <r_file> after each line with <filter>
# $ sed '/<filter>/r <r_file>' <file_name>

# --------- create myfile -----------
echo "This is the first test." >> myfile
echo "This is the second test." >> myfile
echo "This is the third test." >> myfile
echo "This is the fourth test." >> myfile
echo "This is the fifth test." >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

echo "	add text from script_1 after after each line:"
sed 'r script_1' myfile
echo

echo "	add text from script_1 after line #3:"
sed '3r script_1' myfile
echo

echo "	add text from script_1 after line with <second>:"
sed '/second/r script_1' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------