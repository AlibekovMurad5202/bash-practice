#!/bin/bash

# --------- create myfile -----------
echo "17 22 31 40 59" >> myfile
# -----------------------------------

awk '{
	total = 0
	for (i = 1; i < 6; i++) {
		if ($i == 30)
			break
		if ($i == 40)
			continue
		total += $i
	}
	avg = total / 5
	print "Average: " avg
}' myfile

# --------- remove myfile -----------
rm myfile
# -----------------------------------
