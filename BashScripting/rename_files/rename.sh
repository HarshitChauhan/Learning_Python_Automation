#!/bin/bash

#this script renames the files with .HTM extension to files with .html extentions

for file in *.HTM; do
	name=$(basename "$file" .HTM)
	mv "$file" "$name.html"
done
echo "Done..."
