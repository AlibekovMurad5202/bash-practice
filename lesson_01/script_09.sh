#!/bin/bash

USER=anotherUser
if grep $USER /etc/passwd 
then
	echo "$USER exists"
elif ls /home/kali
then
	echo "You're watching /home/kali"
fi

