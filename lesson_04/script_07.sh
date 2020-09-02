#!/bin/bash

exec 3> myfile
echo "This is a test line" >&3
exec 3>&-
echo "This won't work" >&3
