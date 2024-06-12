#!/bin/bash

# Function to display error messages
message_error() { echo "Error: $1"; }

# Check if the first argument (filename) is provided
if [[ -z ${1+x} ]]; then
    message_error "Please provide a filename; Filename cannot be empty."
    exit 1
fi

filename=$1

# Check if the provided filename corresponds to an actual file
if [[ ! -e $filename ]]; then
    message_error "The file '$filename' does not exist."
    exit 1
fi

# Check various properties of the file
if [[ -f $filename ]]; then
    echo "File '$filename' is a regular file."
else
    echo "File '$filename' is not a regular file."
fi

if [[ -d $filename ]]; then
    echo "File '$filename' is a directory."
else
    echo "File '$filename' is not a directory."
fi

if [[ -r $filename ]]; then
    echo "File '$filename' is readable."
else
    echo "File '$filename' is not readable."
fi

if [[ -w $filename ]]; then
    echo "File '$filename' is writable."
else
    echo "File '$filename' is not writable."
fi

if [[ -x $filename ]]; then
    echo "File '$filename' is executable."
else
    echo "File '$filename' is not executable."
fi

if [[ -s $filename ]]; then
    echo "File '$filename' is not empty."
else
    echo "File '$filename' is empty."
fi

# Check if the provided filename string is empty
if [[ -z $filename ]]; then
    echo "Filename string is empty."
else
    echo "Filename string is not empty."
fi

# Check if the provided filename string is not empty
if [[ -n $filename ]]; then
    echo "Filename string is not empty."
else
    echo "Filename string is empty."
fi
