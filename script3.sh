#!/bin/bash
# Download a file from the internet and save it to a specified location
# Author: Manpreet Kaur
# Date: 15 november 2025

# Checking if both the arguments are given
if [ $# -ne 2 ]; then
  echo "Usage: $0 <url> <destination>"
  exit 1
fi

# Assigning the arguments to the variables
url=$1
destination=$2

# Download file using wget command
wget -O "$destination" "$url"

# Check if the download was successful
if [ $? -eq 0 ]; then
  echo "File downloaded successfully to '$destination'"
else
  echo "Error: Failed to download file from '$url'"
fi
