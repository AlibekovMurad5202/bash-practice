#!/bin/bash

# $ at [ -f <filename> ] <time>
# executes file <filename> at a specified time <time>

# $ atq
# lists the user's pending jobs

# $ atrm <JID>
# deletes jobs, identified by their job number <JID>.

# cron - daemon to execute scheduled commands

# $ crontab [ -ler ]
# The -l option causes the current crontab to be displayed on standard output.
# The -e option is used to edit the current crontab.
# The -r option causes the current crontab to be removed.

count=1
while [ $count -le 5 ]
do
	echo "Loop #$count"
	sleep 1
	count=$(( $count + 1 ))
done