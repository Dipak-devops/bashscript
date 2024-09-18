#!/bin/bash

total_lines=0

while IFS= read -r file; do
  if [ -f "$file" ]; then
	  line_count=$(wc -l < "$file")
          total_lines=$((total_lines+line_count))
  fi

done < <(ls -1)

echo " Total no of lines in all files availble in the direcory is:$total_lines"
  

