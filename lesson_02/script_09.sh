#!/bin/bash

IFS=$'\n'
for user_record in $(cat /etc/passwd)
do
	echo "Information about user:"
	IFS=:
	for field in $user_record
	do 
		echo "[ $field ]"
	done
	echo
done