#!/bin/bash
echo "Provide a number to check: "
read number
if ((number % 2 == 0)) then
	echo "$number is EVEN"
else
	echo "$number is ODD"
fi
