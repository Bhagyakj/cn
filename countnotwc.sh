#!/bin/bash

file="/home/student/cn/bhu.txt"

lines=0
words=0

while read line
do
  lines=$((lines + 1))

  for word in $line
  do
    words=$((words + 1))
  done
done < "$file"

echo "Number of lines: $lines"
echo "Number of words: $words"

