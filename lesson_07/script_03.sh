#!/bin/bash

# $ sed -e '<sed_command_1; sed_command_2; ...; sed_command_N>' <file_name>
# 	or
# $ sed -e '<Press 'Enter'>
# > <sed_command_1>
# > <sed_command_2>
# > ...
# > <sed_command_N>' <file_name>


# --------- create myfile -----------
echo "This is a test" >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

echo "	'sed':"
sed -e 's/This/That/; s/test/another test/' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------
