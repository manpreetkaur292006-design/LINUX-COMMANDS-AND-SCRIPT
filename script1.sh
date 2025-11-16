#!/bin/bash
# Backup a specified directory to a backup folder with a timestamp
# Author: Manpreet Kaur
# Date: 15 november 2025

# Check if both arguments are given
if [ $# -ne 2 ]; then
  echo "Usage: $0 <source_directory> <backup_directory>"
  exit 1
fi

# Assigning the arguments to the variables
source=$1
backup=$2

# Check if the source directory exists
if [ ! -d "$source" ]; then
  echo "Error: Source directory '$source' does not exist."
  exit 1
fi

# Creatig the backup directory if it doesn't exist
if [ ! -d "$backup" ]; then
  mkdir -p "$backup"
fi

# Generating the timestamp for the backup folder name
timestamp=$(date +%Y%m%d%H%M%S)

# Copy the source directory to the backup directory with timestamp
cp -r "$source" "$backup/backup_$timestamp"

# Confirming the backup completion
echo "Backup of '$source' completed at '$backup/backup_$timestamp'"
