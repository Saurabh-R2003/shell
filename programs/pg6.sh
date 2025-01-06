#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No args"
else
    for name in "$@"; do
        if grep "$name" /etc/passwd > /dev/null; then
            echo "Login name: $name"

            # Corrected cut command
            hdir=$(grep "$name" /etc/passwd | cut -d":" -f6)
            echo "Home Directory: $hdir"
        else
            echo "$name is not a valid name"
        fi
    done
fi
