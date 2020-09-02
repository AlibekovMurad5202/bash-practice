#!/bin/bash

# --------- create myfile -----------
echo "1235.9652147.91" >> myfile
echo "927-8.365217.27" >> myfile
echo "36257.8157492.5" >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

awk 'BEGIN { FIELDWIDTHS="3 5 2 5" } { print $1, $2, $3, $4 }' myfile

# --------- remove myfile -----------
rm myfile
# -----------------------------------
