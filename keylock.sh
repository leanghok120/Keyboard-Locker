#!/bin/bash

echo "Press any key to continue or 'q' to quit."

# Disable terminal buffering
stty -echo
stty cbreak

while true; do
    # Read a single character from input
    read -n 1 key

    # Check if 'q' is pressed to quit
    if [[ "$key" == "q" ]]; then
        break
    fi

    # Display the pressed key
    echo "You pressed: $key"
done

# Reset terminal settings
stty echo
stty -cbreak
