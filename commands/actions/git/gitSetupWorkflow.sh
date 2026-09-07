#!/bin/bash

# Git Workflow Setup Script for Linux/Ubuntu
# Sets up the branch workflow

git switch main
git switch -c base
git push origin base
git switch -c dev
git push origin dev
