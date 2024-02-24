#!/bin/bash

# Select emails of all students from students-list_1023.txt
cut -d',' -f1 students-list_1023.txt > student-emails.txt
echo "Student emails selected and saved to student-emails.txt"
