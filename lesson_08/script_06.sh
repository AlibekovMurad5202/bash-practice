#!/bin/bash

# --------- create create_report -----------
echo "BEGIN {
		print \"The latest list of users and shells\"
		print \" User_Name \t Home_Path\"
		print \" --------- \t ---------\"
		FS=\":\"
	}
	{
		print \$1 \" \t \" \$6
	}
	END {
		print \"The end.\"
	}
" >> create_report
# ------------------------------------------

awk -f create_report /etc/passwd

# --------- remove create_report -----------
rm my_commands
# ------------------------------------------
