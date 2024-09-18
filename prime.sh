#!/bin/bash

read -p "Enter the number to check : " num

is_prime=1

if [ "$num" -le 1 ]; then
	is_prime=0
fi

for ((i=2; i<num; i++)); do
	if [ $((num % i)) -eq 0 ]; then
		is_prime=0
	        break
	fi
done


if [ "$is_prime" -eq 1 ]; then
	echo "$num is a prime no"
 else
	 echo "$num is not a prime no."
fi


#Check if a Number is Prime
