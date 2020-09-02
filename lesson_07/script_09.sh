#!/bin/bash

# The original data remains unchanged!

# to delete all lines
# $ sed 'd'

# to delete only line #N
# $ sed '<N>d' <file_name>

# to delete lines starting from line #N to the end of the file
# $ sed '<N>,$d' <file_name>

# to delete lines in range [N_start; N_end]
# $ sed '<N_start>,<N_end>d' <file_name>

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

echo "	delete all lines:"
sed 'd' myfile
echo

echo "	delete line #2:"
sed '2d' myfile
echo

echo "	delete lines starting from line #3:"
sed '3,$d' myfile
echo

echo "	delete lines in range [2; 4]:"
sed '2,4d' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------