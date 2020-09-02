#!/bin/bash

# $ sed 's/<pattern>/<replacement>/<flag>' <file_name>
# if <flag> is <number> (<number> is 1, 2, ...) then replaced n-th appearance of the <pattern> in the line
# if <flag> is 'g' then replaced all appearances of the <pattern> in the line
# if <flag> is 'w <w_file>' then the modified lines will be in the file <w_file>

# --------- create myfile -----------
echo "This is a test and I like this test." >> myfile
echo "This is the next test of the test scripts." >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

echo "	'sed' (<flag> = 2):"
sed 's/test/another test/2' myfile
echo

echo "	'sed' (<flag> = 'g'):"
sed 's/test/another test/g' myfile
echo

echo "	'sed' (<flag> = 'w result'):"
sed 's/test/another test/w result' myfile
echo

echo "	result:"
cat result
echo
rm result

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------