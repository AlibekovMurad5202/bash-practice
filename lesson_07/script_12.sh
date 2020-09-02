#!/bin/bash

# to replace line #N
# $ sed '<N>c\<new_line>' <file_name>

# to replace only lines with <filter>
# $ sed '/<filter>/c\<new_line>' <file_name>

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
sed '2c\This is a changed line of text.' myfile
echo

echo "	modified lines with <third>:"
sed '/third/c\This is a changed line of text.' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------