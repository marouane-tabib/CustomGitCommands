#!/bin/bash

# Git Start Script for Linux/Ubuntu
# Starts a new feature branch from base

# Check if branch name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide branch name as argument"
    echo "Usage: git start <branch-name>"
    exit 1
fi

git switch base
git switch -c "$1"
git push origin "$1"
