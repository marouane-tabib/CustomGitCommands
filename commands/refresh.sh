#!/bin/bash

# Custom Git Command Refresh Script for Linux/Ubuntu
# This script refreshes/reloads all git aliases

set -e  # Exit on error

echo "Running custom Git command refresh"
git alias.restore
git alias.register
clear
echo "Refreshing completed!"
