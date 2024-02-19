#!/bin/bash

# Remote server details
remote_host="64293e56bc62.3a2627c1.alu-cod.online"
remote_username="64293e56bc62"
remote_password="328d3b338a4ced526c9a"
remote_directory="/summative/1023-2024j"

# Directory to backup
source_directory="negpod_id-q1"

# Perform backup using rsync over SSH
rsync -avz -e "sshpass -p $remote_password ssh -o StrictHostKeyChecking=no" "$source_directory" "$remote_username@$remote_host:$remote_directory"

echo "Backup of directory $source_directory completed to remote server."
