#!/bin/bash

# Git to Production Script for Linux/Ubuntu
# Merges development branch to production

# Check if branch name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide branch name as argument"
    echo "Usage: git to-prod <branch-name>"
    exit 1
fi

git to-dev "$1"
git push origin dev
git switch main
git merge dev
git push origin main
git switch base
git merge main
git push origin base
