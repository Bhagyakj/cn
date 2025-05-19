#!/bin/bash

# Check if two file names are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1="$1"
file2="$2"

# Check if both files exist
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "Error: Both files must exist and be regular files."
    exit 1
fi

# Compare the files
if cmp -s "$file1" "$file2"; then
    echo "Files are identical. Deleting $file2"
    rm "$file2"
else
    echo "Files are different. No action taken."
fi

