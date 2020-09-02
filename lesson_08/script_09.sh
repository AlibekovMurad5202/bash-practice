#!/bin/bash

# ARGC (count)
# ARGV (values)
# 	example: for [ awk '...' <file_name> ]: ARGC=2, ARGV[0]='awk', ARGV[1]=<file_name>
# ARGIND (index)
# ENVIRON - array: ENVIRON["<environment_variable>"]=<env_var_value>
#	example: ENVIRON["HOME"]=/home/kali
# FILENAME (<file_name>)
# FNR (number of current record in file)
# IGNORECASE (if not null then case is ignored)
# NF (total number of fields in record)
# NR (total number of processed records)

# --------- create myfile -----------
echo "This is the first test." >> myfile
echo "This is the second test." >> myfile
echo "This is the third test." >> myfile
# -----------------------------------

echo | awk 'BEGIN { print ARGC, ARGV[0], ARGV[1]}' myfile
echo | awk '{ print ENVIRON["HOME"]; print ENVIRON["PATH"] }'
echo | awk -v home=$HOME '{ print home }'
awk 'BEGIN { FS=":"; OFS=" <--> " } { print $1, $NF }' /etc/passwd
awk '{ print $0, "  NR = "NR, "  FNR = "FNR }' myfile myfile

# --------- remove myfile -----------
rm myfile
# -----------------------------------