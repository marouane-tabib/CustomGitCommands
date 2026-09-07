#!/bin/bash

# Custom Git Commands Installation Script for Linux/Ubuntu
# This script installs required dependencies and sets up git aliases
# Usage: bash download.sh

set -e  # Exit on error

echo "Running custom Git command installation"

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Git if not present
if ! command_exists git; then
    echo "Installing Git..."
    sudo apt update
    sudo apt install -y git
else
    echo "Git is already installed"
fi

# Install GitHub CLI (gh) if not present
if ! command_exists gh; then
    echo "Installing GitHub CLI..."
    # Check distribution type and install accordingly
    if [ -f /etc/debian_version ]; then
        # Debian/Ubuntu
        curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
        sudo apt update
        sudo apt install -y gh
    else
        echo "Please install GitHub CLI manually: https://cli.github.com/"
        exit 1
    fi
else
    echo "GitHub CLI is already installed"
fi

# Install GitLab CLI (glab) if not present
if ! command_exists glab; then
    echo "Installing GitLab CLI..."
    # Try different installation methods
    if command_exists snap; then
        sudo snap install glab
    elif command_exists brew; then
        brew install glab
    else
        # Install from binary
        echo "Installing from binary..."
        TEMP_DIR=$(mktemp -d)
        curl -L https://gitlab.com/gitlab-org/cli/-/releases/permalink/latest/downloads/bin/glab-linux-amd64 -o "$TEMP_DIR/glab"
        chmod +x "$TEMP_DIR/glab"
        sudo mv "$TEMP_DIR/glab" /usr/local/bin/
        rm -rf "$TEMP_DIR"
    fi
else
    echo "GitLab CLI is already installed"
fi

# Set installation directory
CUSTOM_GIT_COMMANDS_DIR="${CUSTOM_GIT_COMMANDS_DIR:-$HOME/.custom-git-commands}"

# Create installation directory if it doesn't exist
mkdir -p "$CUSTOM_GIT_COMMANDS_DIR"

# Copy current files to installation directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Only copy if not already in the installation directory
if [ "$SCRIPT_DIR" != "$CUSTOM_GIT_COMMANDS_DIR" ]; then
    cp -r "$SCRIPT_DIR"/* "$CUSTOM_GIT_COMMANDS_DIR/"
    echo "Files copied to $CUSTOM_GIT_COMMANDS_DIR"
else
    echo "Already in installation directory, skipping copy"
fi

# Set up git alias for register
git config --global alias.register "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/register.sh\""

# Run register script
cd "$CUSTOM_GIT_COMMANDS_DIR/commands"
./register.sh

echo "Installation completed successfully!"
echo "Please configure Git with your name and email:"
echo "git launch <user.name> <user.email>"
