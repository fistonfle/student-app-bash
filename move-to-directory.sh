#!/bin/bash

# Create directory name based on negpod_id(16) and question number(2)
directory="negpod_16-q1"

# Create the directory if it doesn't exist
mkdir -p "$directory"

# Move all files created in question 1 to the directory
mv main.sh students-list_1023.txt select-emails.sh student-emails.txt "$directory"/

echo "Files moved to directory: $directory"

