#!/bin/bash

awk '
	function my_print() { printf "The user %s has home path at %s\n", $1, $6 }
	BEGIN { FS=":" }
	{ my_print() }
' /etc/passwd