#!/bin/bash

# --------- create my_commands -----------
echo "{ print \$1 \" has a home directory at \" \$6 }" >> my_commands
# ----------------------------------------

echo "	awk-result:"
awk -F: -f my_commands /etc/passwd

# --------- remove my_commands -----------
rm my_commands
# ----------------------------------------
