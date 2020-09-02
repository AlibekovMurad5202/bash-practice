#!/bin/bash

# [ n1 -eq n2 ] is (n1 == n2)
# [ n1 -ge n2 ] is (n1 >= n2)
# [ n1 -gt n2 ] is (n1 >  n2)
# [ n1 -le n2 ] is (n1 <= n2)
# [ n1 -lt n2 ] is (n1 <  n2)
# [ n1 -ne n2 ] is (n1 != n2)

val1=10
val2=11
if [ $val1 -gt $val2 ]
then 
	echo "$val1 is greater than $val2"
else
	echo "$val1 isn't greater than $val2"
fi

