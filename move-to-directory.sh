#!/bin/bash

# Create directory name based on negpod_id(16) and question number(2)
directory="negpod_16-2"

# Create the directory if it doesn't exist
mkdir -p "$directory"

# Move all files created in question 1 to the directory
mv file1.txt file2.txt file3.txt file4.txt "$directory"/

echo "Files moved to directory: $directory"
