#!/bin/bash
callsign=$1
mode=$2
utc=$3
date=$4

islog=$(ls | grep vviperlog.txt)

if [  -e vviperlog.txt ]; then
	echo "Log file detected"
else
	echo "Creating log file"	
	touch vviperlog.txt
	echo "What is your callsign?"
	read ocs
	echo "log from vviperlog.sh for $ocs" >> vviperlog.txt
fi


echo "$callsign    $mode    $utc $date" >> vviperlog.txt
echo "Contact logged :)"

