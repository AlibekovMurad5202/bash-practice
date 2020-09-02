#!/bin/bash
# $ ./script_5 <first_parameter> <second_parameter> ...
# Variable $# contain count of parameters

echo "There were $# parameters passed."
echo "The last parameter was ${!#}"