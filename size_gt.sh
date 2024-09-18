#!/bin/bash

threshold=1000

for file in *; do
	if [ -f "$file" ]; then
		size=$( stat -c%s "$file")

		if [ "$size" -gt "$threshold" ]; then

			echo " $file is larger than $threshold bytes with $size bytes"

		fi
	fi

done
#Problem 1: Find All Files Greater than a Specific Size

