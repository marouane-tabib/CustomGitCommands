#!/bin/bash

# Git Custom Commit All Script for Linux/Ubuntu
# Commits all changes with branch name and commit hash

git commit -am "$1"
if [ $? -ne 0 ]; then
    echo "No changes added to commit."
else
    currentBranch=$(git rev-parse --abbrev-ref HEAD)
    currentCommit=$(git current-commit)
    clear
    git commit --amend -m "$currentBranch | $currentCommit"
    if [ $? -ne 0 ]; then
        echo "Exception..."
    else
        echo "Done..."
    fi
fi
