#!/bin/bash

# GitHub Project Setup Script for Linux/Ubuntu
# Creates a GitHub repository based on repo-status

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide project name as argument"
    echo "Usage: git setup-gh-project <project-name>"
    exit 1
fi

current_repo_status=$(git config --get user.repo-status)

if [ "$current_repo_status" = "public" ]; then
    gh repo create "$1" --public
elif [ "$current_repo_status" = "private" ]; then
    gh repo create "$1" --private
fi

echo "Github Repository created successfully ($current_repo_status) : $1"
