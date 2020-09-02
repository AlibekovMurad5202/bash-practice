#!/bin/bash

# --------- create myfile -----------
echo "17 22 31 40 59" >> myfile
# -----------------------------------

awk '{
	total = 0
	i = 0
	while (i < 5) {
		i++
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
