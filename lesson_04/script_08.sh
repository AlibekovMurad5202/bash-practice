#!/bin/bash

# LiSts all of Open Files:
# lsof [ -a ] [ -p <PID> ] [ -d <DN> ]
# PID - ID of process ($$ contains PID of current process)
# DN - number of the descriptor to get information about
# -a - logical conjunction of results 'lsof -p <PID>' and 'lsof -d <DN>'

exec 3> myfile_1
exec 6> myfile_2
exec 7< myfile_3

lsof -a -p $$ -d 0,1,2,3,6,7