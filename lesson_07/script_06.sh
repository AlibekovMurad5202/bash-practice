#!/bin/bash

# $ sed [ -n ] 's/<pattern>/<replacement>/<flag>' <file_name>
# flag 'p' - to display (only modified lines if -n) modified lines where <pattern> are found
# -n - don't display original data

# --------- create myfile -----------
echo "This is a test." >> myfile
echo "This is a different one." >> myfile
echo "	myfile:"
cat myfile
echo
# -----------------------------------

echo "	only modified lines:"
sed -n 's/test/another test/p' myfile
echo

# another separator ('/' --> '!')
echo "	only modified lines... again:"
sed -n 's!test!another test!p' myfile
echo

# --------- remove myfile -----------
echo "	myfile:"
cat myfile
echo
rm myfile
# -----------------------------------
