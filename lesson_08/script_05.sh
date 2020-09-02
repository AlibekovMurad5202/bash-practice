#!/bin/bash

# BEGIN { ... } - preprocessing
#       { ... } - processing
#   END { ... } - postprocessing
 
# $ awk [ <options> ] 'BEGIN {...} {...} END {...}' <file_name>

# --------- create my_commands -----------
echo "BEGIN {
	print \"Hello world!\"
	print \"	awk-result:\"
}" >> my_commands

echo "{
	text = \" has a home directory at \"
	print \$1 text \$6
}" >> my_commands

echo "END {
	text = \"	finished. \"
	print text
}" >> my_commands
# ----------------------------------------

awk -F: -f my_commands /etc/passwd

# --------- remove my_commands -----------
rm my_commands
# ----------------------------------------
