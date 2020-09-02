#!/bin/bash

# $ sed '<sed_command>' <file_name>
# sed --> 1(default: STDOUT)

# subtitute (pattern_1 --> pattern_2):
# $ sed 's/<pattern_1>/<pattern_2>/' <file_name>

# --------- create myfile -----------
echo "This is a test and I like this test." >> myfile
echo "This is the next test of the test scripts." >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

echo "	'sed':"
sed 's/test/another test/' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------
