#!/bin/bash

# Define the countdown function
countdown() {
  echo "countdown started"  # Indicates the start of the countdown

  # Description of the function
  declare desc="A simple countdown"

  # Local variable to hold the number of seconds for the countdown
  local seconds="${1}"

  # Calculate the end time in seconds since epoch
  local end_time=$(( $(date +%s) + seconds ))  # Corrected the assignment syntax

  # Loop until the current time is greater than the end time
  while [[ "${end_time}" -gt $(date +%s) ]]; do 
    # Calculate the remaining time and format it as HH:MM:SS
    echo -ne "$(date -u --date @$((${end_time} - $(date +%s))) +%H:%M:%S)\r";

    # Sleep for 0.1 seconds to reduce CPU usage
    sleep 0.1
  done
  echo "--"
}

# Example usage of the countdown function
countdown
echo "end"