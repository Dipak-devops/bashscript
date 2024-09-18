#!/bin/bash
if [ -z "$1" ]; then
 echo "usage : $0 /c/Users/rajan/dipak
 exit 1
fi

directory=$1
if [ ! -d "$directory" ]; then
 echo "directory not found"
 exit 1
 
 total_lines=0
 
for file in "$diretory"/*; do
  if [ -f "$file" ] ; then
  lines=$(wc -l <"$file")
  total_lines=$((total_lines + lines)
  fi 
done
echo "total no of lines : $total_lines"
