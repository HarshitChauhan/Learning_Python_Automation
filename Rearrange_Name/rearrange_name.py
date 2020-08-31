#!/usr/bin/env python3

import re
def rearrange_name(name):
	result = re.search(r"([\w .-]*), ([\w .-]*)$", name)
	if result is None:
		return name
	return "{} {}".format(result[2], result[1])

print("Enter name in format <lastname>, <firstname>")
name=str(input())
res=rearrange_name(name)
print(res)
