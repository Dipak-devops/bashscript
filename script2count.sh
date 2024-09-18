#!/bin/bash

file_count=$(ls -1 | wc -l)

echo " no of files in directory is $file_count"

line_count=$(cat * | wc -l)

echo " no of lines in all files are : $line_count"


word_count=$(cat * | wc -w)

echo " no of words in all files are : $word_count"
