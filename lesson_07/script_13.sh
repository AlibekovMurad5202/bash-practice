#!/bin/bash

# to replace symbols 
# For i = 1..N : symbols[i] --> new_symbols[i]
# $ sed 'y/<symbols>/<new_symbols>/' <file_name>

# --------- create myfile -----------
echo "This is a test #1." >> myfile
echo "This is a test #2." >> myfile
echo "This is a test #3." >> myfile
echo "This is a test #4." >> myfile
echo "This is a test #5." >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

echo "	modified lines:"
sed 'y/123/567/' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------