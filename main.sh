#!/bin/bash

# Function to ignore SIGINT
ignore_sigint() {
    echo "Ignoring SIGINT (Ctrl+C)"
}

# Trap SIGINT and call the function to ignore it
trap ignore_sigint SIGINT

while true; do
    echo "Running git.sh..."
    ./git.sh

    if [ $? -eq 0 ]; then
        echo "git.sh has exited successfully."
    else
        echo "git.sh has exited with an error. Restarting..."
    fi

    echo "Waiting for 10 minutes before restarting..."
    sleep 10  # 10 minutes = 600 seconds
done
