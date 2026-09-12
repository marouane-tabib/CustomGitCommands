#!/bin/bash

# GitHub Authentication Setup Script
# This script helps authenticate with GitHub

echo "GitHub Authentication Setup"
echo "==========================="
echo ""

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo "GitHub CLI (gh) is not installed."
    echo ""
    echo "To install GitHub CLI, run one of these commands:"
    echo ""
    echo "Ubuntu/Debian:"
    echo "  curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg"
    echo "  echo \"deb [arch=\$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main\" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null"
    echo "  sudo apt update"
    echo "  sudo apt install gh"
    echo ""
    echo "Or use snap:"
    echo "  sudo snap install gh"
    echo ""
    echo "After installation, run this script again."
    exit 1
fi

echo "GitHub CLI is installed: $(gh --version)"
echo ""
echo "Starting GitHub authentication..."
echo "This will open your browser for login."
echo ""

# Run GitHub authentication
gh auth login

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ GitHub authentication successful!"
    echo ""
    echo "You can now push to GitHub repositories."
    echo ""
    echo "Check your authentication status:"
    gh auth status
else
    echo ""
    echo "❌ GitHub authentication failed."
    echo "Please try again or check your credentials."
    exit 1
fi
