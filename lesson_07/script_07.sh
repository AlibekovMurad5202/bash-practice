#!/bin/bash

# to modify only line #N
# $ sed '<N>s/<pattern>/<replacement>/' <file_name>

# to modify lines starting from line #N to the end of the file
# $ sed '<N>,$s/<pattern>/<replacement>/' <file_name>

# to modify lines in range [N_start; N_end]
# $ sed '<N_start>,<N_end>s/<pattern>/<replacement>/' <file_name>

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

echo "	modified line #2:"
sed '2s/test/another test/' myfile
echo

echo "	modified lines starting from line #3:"
sed '3,$s/test/another test/' myfile
echo

echo "	modified lines in range [2; 4]:"
sed '2,4s/test/another test/' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------
