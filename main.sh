#!/bin/bash

# Function to create a student record
create_student_record() {
    echo "Enter student email:"
    read -e -p "Email: " email
    echo "Enter student age:"
    read -e -p "Age: " age
    echo "Enter student ID:"
    read -e -p "ID: " id

    # Append student details to the students-list_1023.txt file
    echo "$email,$age,$id" >> students-list_1023.txt
    echo "Student record created successfully."
    echo "----------------------------------"
}

# Function to view all student records
view_student_records() {
    echo "List of student records:"
    cat students-list_1023.txt
    echo "----------------------------------"
}

# Function to delete a student record by ID
delete_student_record() {
    echo "Enter student ID to delete:"
    read -e -p "ID: " id
    # Remove the line containing the given ID from the file
    sed -i "/^.*,$id$/d" students-list_1023.txt
    echo "Student record with ID $id deleted successfully."
    echo "----------------------------------"
}

# Function to update a student record by ID
update_student_record() {
    echo "Enter student ID to update:"
    read -e -p "ID: " id
    echo "Enter new student email:"
    read -e -p "New Email: " new_email
    echo "Enter new student age:"
    read -e -p "New Age: " new_age

    # Replace the line containing the given ID with the updated details
    sed -i "s/^.*,$id$/$new_email,$new_age,$id/" students-list_1023.txt
    echo "Student record with ID $id updated successfully."
    echo "----------------------------------"
}

# Function to exit the application
exit_application() {
    echo "Exiting the application."
    exit 0
}

# Main menu
while true; do
    echo "Welcome to the ALU registration system"
    echo "1. Create student record"
    echo "2. View all student records"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Exit"
    read -e -p "Enter your choice: " choice

    case $choice in
        1) create_student_record ;;
        2) view_student_records ;;
        3) delete_student_record ;;
        4) update_student_record ;;
        5) exit_application ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done

