#!/bin/bash

# Launch script that calls other configuration scripts

# Check if arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Error: Please provide user name and email as arguments"
    echo "Usage: git launch <name> <email>"
    exit 1
fi

git config-git "$1" "$2"
git config-gh
git config-glab
