#!/bin/bash

read -p "Enter the file name: " file
read -p "Enter the word to check the occurence: " word
count=$(grep -o -w "$word" "$file" | wc -l )

echo " The word $word occures in file $file $count time."

#Count the Occurrences of a Word in a File
