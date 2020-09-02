#!/bin/bash

# [ $str1 = $str2 ] or [ $str1 == $str2 ]
# [ $str1 != $str2 ]
# [ $str1 \< $str2 ] (remember: A < a; str1 < str2 if len(str1) < len(str2))
# [ $str1 \> $str2 ]
# [ -n $str ] is (len(str) > 0)
# [ -z $str ] is (len(str) == 0)

user="kali"
if [ $user = $USER ]
then
	echo "The user $user is the current logged in user"
else 
	echo "WTF? Who are you?"
fi