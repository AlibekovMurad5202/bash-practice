#!/bin/bash

# [ -d file ] Check: is directory?
# [ -e file ] Check: exist?
# [ -f file ] Check: is file?
# [ -r file ] Check: can read?
# [ -w file ] Check: can write?
# [ -x file ] Check: can execute?
# [ -s file ] Check: is empty?
# [ file1 -nt file2 ] Check: Is file1 newer than file2?
# [ file1 -ot file2 ] Check: Is file1 older than file2?
# [ -O file ] Check: Is current user owner?
# [ -G file ] Check: Is current user in owner's group?

mydir=$HOME/Desktop/bash_tests
if [ -d $mydir ]
then 
	echo "The $mydir directory exists"
	cd $mydir
	ls
else 
	echo "The $mydir directory doesn't exist"
fi