#!/bin/bash

# $0 - record
# $1 - first field in record
# $2 - second field in record
# ...
# $9 - ninth field in record
# $10 - tenth field in record
# $11 - eleventh field in record
# ...

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

echo "	awk-result:"
awk '{ print $4 }' myfile
echo

echo "	awk-result:"
awk '{ $4="sixth"; print $0 }' myfile
echo

echo "	awk-result (field's separator = 'the'):"
awk -F'the' '{ print $2 }' myfile
echo

echo "	users:"
awk -F: '{ print $1 }' /etc/passwd
echo

# --------- remove myfile -----------
rm myfile
# -----------------------------------