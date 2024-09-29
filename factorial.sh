#!/bin/bash
factorial() { 
	if [ $1 -le 1 ]; then
		echo 1
	else
		local temp=$(( $1 - 1 ))
		echo $(( $1 * $(factorial $temp) ))
	fi
	    

}
echo "Enter the Number:"
read number
result=$(factorial $number)
echo "factorial of &number is : $result"

