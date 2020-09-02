#!/bin/bash

# --------- create my_commands -----------
echo "{
	text = \" has a home directory at \"
	print \$1 text \$6
}" >> my_commands
# ----------------------------------------

echo "	awk-result:"
awk -F: -f my_commands /etc/passwd

# --------- remove my_commands -----------
rm my_commands
# ----------------------------------------