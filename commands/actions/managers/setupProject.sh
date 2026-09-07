#!/bin/bash

# Project Setup Script for Linux/Ubuntu
# Initializes a new git project and sets up repository

set -e  # Exit on error

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide project name as argument"
    echo "Usage: git setup-project <project-name>"
    exit 1
fi

git init
git add .
git commit -m "Initial Commit..."
git branch -M main
git setup-repository "$1"
git remote add origin "https://github.com/marouane-tabib/$1"
git remote set-url origin "https://github.com/marouane-tabib/$1"
git push origin main
