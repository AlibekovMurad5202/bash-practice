#!/bin/bash

# to delete only lines with <filter>
# $ sed '/<filter>/d' <file_name>

# to delete lines in range [N_start; N_end]
# N_start is the number of the first line with filter_1
# N_end is the number of the line with filter_2
# $ sed '/<filter_1>/,/<filter_2>/d' <file_name>

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

echo "	delete lines with <second>:"
sed '/second/d' myfile
echo

echo "	delete lines:"
sed '/second/,/fourth/d' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------
