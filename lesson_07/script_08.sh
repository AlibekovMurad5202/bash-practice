#!/bin/bash

# to modify only lines with <filter>
# $ sed '/<filter>/s/<pattern>/<replacement>/' <file_name>

# to modify lines in range [N_start; N_end]
# N_start is the number of the first line with <filter_1>
# N_end is the number of the line with <filter_2>
# $ sed '/<filter_1>/,/<filter_2>/s/<pattern>/<replacement>/' <file_name>

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

echo "	modified lines with <second>:"
sed '/second/s/test/another test/' myfile
echo

echo "	modified lines:"
sed '/second/,/fourth/s/test/another test/' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------