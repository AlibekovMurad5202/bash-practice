#!/bin/bash
# $ nohup ./script_5 &> /dev/null &
# & - background launch
# nohup - launch that immune to the signal SIGHUP
# default: out and errors --> nohup.out

# $ ps [ -l ]
# the current processes

# $ jobs [ -l ]
# -l - to show PID

# $ bg <JID>
# $ fg <JID>
# bg - resume process in background
# fg - resume process in foreground
# JID - job's ID

count=1
while [ $count -le 10 ]
do
	sleep 1
	count=$(( $count + 1 ))
done
echo -n "finished."