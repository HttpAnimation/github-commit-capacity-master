#!/bin/bash

while true; do
    echo "Running git.sh..."
    ./git.sh

    if [ $? -eq 0 ]; then
        echo "git.sh has exited successfully."
    else
        echo "git.sh has exited with an error. Restarting..."
    fi

    sleep 1  # Adjust sleep duration as needed
done
