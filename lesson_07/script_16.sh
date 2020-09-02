#!/bin/bash

# -------- create myfile and data_file --------
echo "This is the first test." >> myfile
echo "This is the second test." >> myfile
echo "DATA" >> myfile
echo "This is the fifth test." >> myfile
echo "	myfile:"
cat myfile
echo

echo "This is the third test." >> data_file
echo "This is the fourth test." >> data_file
echo "	data_file:"
cat data_file
echo
# ---------------------------------------------

echo "	replace line 'DATA' with text from data_file:"
sed '/DATA/ {
	r data_file
	d
}' myfile
echo

# -------- remove myfile and data_file --------
rm myfile
rm data_file
# ---------------------------------------------