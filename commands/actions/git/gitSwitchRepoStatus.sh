#!/bin/bash

# Git Repository Status Switch Script for Linux/Ubuntu
# Switches between public and private repository status

# Assume user.repo-status is set to either "public" or "private"
current_repo_status=$(git config --get user.repo-status)

if [ "$current_repo_status" = "public" ]; then
    git config user.repo-status private
elif [ "$current_repo_status" = "private" ]; then
    git config user.repo-status public
fi

current_repo_status=$(git config --get user.repo-status)

# Display the updated user.repo-status value
echo "Default repo status value updated successfully to: $current_repo_status"
