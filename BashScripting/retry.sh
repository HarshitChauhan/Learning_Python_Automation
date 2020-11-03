#!/bin/bash

#this script runs untill it recieve 0 as its argument

#run this script with random-exit.py as an argument...

n=0
command=$1
while ! $command && [ $n -le 5 ]; do
	sleep $n
	((n=n+1))
	echo "Retry #$n"
done;
