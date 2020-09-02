#!/bin/bash

# $ sed -f <sed_commands_file_name> <file_name>

# ------- create mycommands ---------
echo "s/This/That/" >> mycommands
echo "s/test/another test/" >> mycommands
# -----------------------------------

# --------- create myfile -----------
echo "This is a test" >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

echo "	'sed':"
sed -f mycommands myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------

# ------- remove mycommands ---------
rm mycommands
# -----------------------------------
