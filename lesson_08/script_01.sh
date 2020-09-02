#!/bin/bash

# awk: data is a set of records, where each record is a set of fields
# example: text = set of lines; each line = set of words

# awk processes line by line
# The original data remains unchanged!

# $ awk [ <options> ] [ <program_file_name> ] [ <file_name> ]
# 	or
# $ awk [ <options> ] '{ <command_1>; <command_2>; ... }' [ <file_name> ]

# if <file_name> isn't set then data is taken from STDIN
# 	to end: press <Ctrl> + <D> ('EOT')

# Some options:
# -F <fields_separator>	
#	or -F '<fields_separator>' 
#	or -F<fields_separator> 
#	or -F'<fields_separator>'
# -f <awk_script>
# -v <variable>=<value>
# -mf <fields_max_number>
# -mr <records_max_number>

awk '{ print "Hello, world!" }'
