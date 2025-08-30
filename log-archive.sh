#!/bin/bash
set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Error: Invalid number of arguments"
    exit 1
fi

# The directory to read the files from to be compressed
input_directory=$(realpath $1)
# The directory to write the tar file to to
output_directory=$(realpath $2)

# First we want to check if the supplied arguments are indeed directory path or not
if [[ -f $input_directory ]]; then
    echo "$input_directory is not a directory"
    exit 1
elif [[ -f $output_directory ]]; then
    echo "$output_directory is not a directory"
    exit 1
fi


# Once the arguments are validated, check for existance of direcory
if [[ -d $input_directory ]]; then
    echo "Source directory exists: $input_directory"
else
    echo "Source directory doesn't exist: $input_directory"
    exit 1
fi

if [[ -d $output_directory ]]; then
    echo "Target directory exists: $output_directory"
else
    echo "Target directory doesn't exist: $output_directory"
    echo "Creating directory...."
    mkdir $output_directory
fi

date_label=$(date +"%Y%m%d")
time_label=$(date +"%H%M%S")
name="logs_arhive_${date_label}_${time_label}.tar.gz"

cd $output_directory
tar -czf $name -C $input_directory .