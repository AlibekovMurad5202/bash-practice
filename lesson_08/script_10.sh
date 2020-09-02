#!/bin/bash

# --------- create myfile -----------
echo "10" >> myfile
echo "20" >> myfile
echo "30" >> myfile
echo "40" >> myfile
echo "50" >> myfile
# -----------------------------------

awk '{ if ($1 > 30) print $1 } ' myfile
echo

awk '{ if ($1 > 30) print $1; else print "Sorry" } ' myfile
echo

awk '{
	if ($1 < 20) {
		x = $1 * 2
		print x
	}
	else {
		x = $1 / 2
		print x
	}
}' myfile

# --------- remove myfile -----------
rm myfile
# -----------------------------------