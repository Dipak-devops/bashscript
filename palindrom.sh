#!/bin/bash

read -p "Enter the string to check: " str

reverse_str=$(echo "$str" | rev)

if [ "$reverse_str" == "$str" ]; then
	echo " Word $str is a palindrom."

else
	echo "Word $str is not a palindrom."
fi

#Count the Occurrences of a Word in a File
<<EOF
#alternet if rev dosent work
#!/bin/bash

# Read the input string from the user
read -p "Enter the string to check: " str

# Get the length of the string
length=${#str}

# Initialize an empty string to hold the reversed string
reverse_str=""

# Reverse the string using a loop
for (( i=$length-1; i>=0; i-- )); do
  reverse_str="$reverse_str${str:$i:1}"
done

# Check if the original string and the reversed string are the same
if [ "$str" == "$reverse_str" ]; then
  echo "Word $str is a palindrome."
else
  echo "Word $str is not a palindrome."
fi
EOF
