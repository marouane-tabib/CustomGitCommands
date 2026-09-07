#!/bin/bash

# Git Current Commit Script for Linux/Ubuntu
# Returns the current commit message

git log -1 --pretty=format:"%s"
