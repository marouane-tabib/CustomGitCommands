#!/bin/bash

# Git Host Switch Script for Linux/Ubuntu
# Switches between github and gitlab hosts

# Assume user.host is set to either "github" or "gitlab"
current_host=$(git config --get user.host)

if [ "$current_host" = "github" ]; then
    git config user.host gitlab
elif [ "$current_host" = "gitlab" ]; then
    git config user.host github
fi

current_host=$(git config --get user.host)

# Display the updated user.host value
echo "Default host value updated successfully to: $current_host"
