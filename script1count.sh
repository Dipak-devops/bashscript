#!/bin/bash

FILENAME="GIT.txt"

if [ -f "$FILENAME" ]; then

	echo "$FILENAME exist in directory"

	lines=$( wc -l < "$FILENAME" )

	echo "'$FILENAME' has $lines in it."

 else
	 echo "$FILENAME dosen't exists "
fi
