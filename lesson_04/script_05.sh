#!/bin/bash
# I/O descriptors: 0(STDIN), 1(STDOUT), 2(STDERR), 3, 4, 5, 6, 7, 8.

exec 3> myfile
echo "This should display on the screen"
echo "and this should be stored in the file" >&3
echo "And this should be back on the screen"
