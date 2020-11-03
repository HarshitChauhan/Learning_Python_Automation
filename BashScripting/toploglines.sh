#!/bin/bash

#in this script we processing the log files in /var/log directory and printing top 5 logs


for logfile in /var/log/*log; do
	echo "Processing: $logfile"
	cut -d' ' -f5- $logfile | sort | uniq -c |sort -nr |head -5
done
