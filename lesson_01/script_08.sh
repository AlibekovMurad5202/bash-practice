#!/bin/bash

USER_NAME=kali_linux
if grep $USER_NAME /etc/passwd
then
	echo "The user $USER_NAME exists"
else
	echo "The user $USER_NAME doesn't exist"
fi