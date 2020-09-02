#!/bin/bash

# to Insert new_line before each line
# $ sed 'i\<new_line>' <file_name>

# to Add new_line after each line
# $ sed 'a\<new_line>' <file_name>

# to Insert new_line before line #N
# $ sed '<N>i\<new_line>' <file_name>

# to Add new_line after line #N
# $ sed '<N>a\<new_line>' <file_name>

# to Insert new_line before line with <filter>
# $ sed '/<filter>/i\<new_line>' <file_name>

# to Add new_line after line with <filter>
# $ sed '/<filter>/a\<new_line>' <file_name>

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

echo "	insert new_line before each line:"
sed 'i\New line.' myfile
echo

echo "	add new_line after each line:"
sed 'a\New line.' myfile
echo

echo "	insert new_line before line #2:"
sed '2i\New line.' myfile
echo

echo "	add new_line after line #2:"
sed '2a\New line.' myfile
echo

echo "	insert new_line before line with <fourth>:"
sed '/fourth/i\New line.' myfile
echo

echo "	add new_line after line with <fourth>:"
sed '/fourth/a\New line.' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------
