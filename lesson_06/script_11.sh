#!/bin/bash
# testing lib

# '.' as alias for 'source'
# example: source ./<lib>
# example:      . ./<lib>

# -------- create my_funcs (lib) ---------
touch my_funcs
echo "function add {" >> my_funcs
echo "	echo \$(( \$1 + \$2 ))" >> my_funcs
echo "}" >> my_funcs
# ----------------------------------------

source ./my_funcs
result=$(add 10 20)
echo "The result is: $result"

# -------- delete my_funcs ---------------
rm my_funcs
# ----------------------------------------
