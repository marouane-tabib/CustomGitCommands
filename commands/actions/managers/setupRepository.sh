#!/bin/bash

# Repository Setup Script for Linux/Ubuntu
# Sets up repository based on current host configuration

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide project name as argument"
    echo "Usage: git setup-repository <project-name>"
    exit 1
fi

current_host=$(git config --get user.host)

if [ "$current_host" = "github" ]; then
    git setup-gh-project "$1"
elif [ "$current_host" = "gitlab" ]; then
    git setup-glab-project "$1"
fi
