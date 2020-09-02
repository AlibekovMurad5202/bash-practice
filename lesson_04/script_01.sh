#!/bin/bash
# $ ./script_1 2> error_file
# STDIN  - 0
# STDOUT - 1
# STDERR - 2

echo "This is an error" >&2
echo "This is normal output"
