#!/bin/bash

exec 2> error_file
echo "This is the start of the script"
echo "now redirecting all output to another location"
exec 1> out_file
echo "This should go to the out_file"
echo "and this should go to the error_file" >&2