#!/bin/bash

# FIELDWIDTHS
# FS (Field Separator)
# RS (Record Separator)
# OFS (Output Field Separator)
# ORS (Output Record Separator)

awk 'BEGIN { FS=":"; OFS=" <--> " } { print $1, $6, $7 }' /etc/passwd
echo

# testing variables
echo | awk 'BEGIN { hi = "Hello world!" } { print hi }'
