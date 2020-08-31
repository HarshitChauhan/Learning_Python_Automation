#!/usr/bin/env python3

import re

def extract_pid(log_line):
	regex = r"\[(\d+)\]"
	result=re.search(regex, log_line)
	if result is None:
		return "No PID found"
	return result[1]

print("Enter log line")
log_line=input()
print(extract_pid(log_line))
