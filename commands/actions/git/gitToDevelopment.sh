#!/bin/bash

# Git to Development Script for Linux/Ubuntu
# Merges feature branch to development

# Check if branch name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide branch name as argument"
    echo "Usage: git to-dev <branch-name>"
    exit 1
fi

git switch "$1"
git push origin "$1"
git switch dev
git merge "$1"
