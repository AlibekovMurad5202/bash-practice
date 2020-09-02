#!/bin/bash

# to display lines with numbers
# $ sed '=' <file_name>

# to display lines with numbers only of lines with <filter>
# $ sed '/<filter>/=' <file_name>

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

echo "	lines with numbers:"
sed '=' myfile
echo

echo "	lines and numbers of lines with <second>:"
sed '/second/=' myfile
echo

echo "	only numbers of lines with <second>:"
sed -n '/second/=' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------
