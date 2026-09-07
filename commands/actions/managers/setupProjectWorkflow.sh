#!/bin/bash

# Project Workflow Setup Script for Linux/Ubuntu
# Sets up project and workflow

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide project name as argument"
    echo "Usage: git setup-project-workflow <project-name>"
    exit 1
fi

git setup-project "$1"
git setup-workflow
