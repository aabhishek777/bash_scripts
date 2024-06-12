
#!/bin/bash

# Function to display error messages
message_error() {
    echo "Error: $1"
}

# Check if the first argument (filename) is provided
# The '-z' test checks if the given string is empty
# '${1+x}' evaluates to 'x' if $1 is set, otherwise it evaluates to an empty string
if [[ -z ${1+x} ]]; then
    message_error "Please provide a filename; Filename cannot be empty."
    exit 1
fi

# If the script continues past this point, it means the filename was provided
filename=$1
echo "Filename provided: $filename"