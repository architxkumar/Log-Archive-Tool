#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Invalid number of arguments"
fi

# The directory to read the files from
input_directory=$1
# The directory to write the files to
output_directory=$2

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
    echo "Directory exists: $input_directory"
else
    echo "Directory doesn't exist: $input_directory"
    echo "Creating directory..."
    mkdir $input_directory
fi

if [[ -d $output_directory ]]; then
    echo "Directory exists: $output_directory"
else
    echo "Directory doesn't exist: $output_directory"
    echo "Creating directory...."
    mkdir $output_directory
fi

date_label=$(date +"%Y%m%d")
time_label=$(date +"%H%M%S")
name="logs_arhive_${date_label}_${time_label}.tar.gz"

cd $input_directory
tar -cf $name *
mv $name $output_directory