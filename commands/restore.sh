#!/bin/bash

# Custom Git Command Restore Script for Linux/Ubuntu
# This script unsets all git aliases

echo "Running custom Git command restore"

# Function to safely unset git aliases (ignores errors if alias doesn't exist)
safe_unset() {
    git config --global --unset-all "alias.$1" 2>/dev/null || true
}

# Action - Git
# git config --global --unset-all alias.alias.register
# git config --global --unset-all alias.alias.restore
# git config --global --unset-all alias.alias.refresh

# Action - Shortcut
safe_unset launch
# Action - Git
safe_unset config-git
# Action - Services
safe_unset config-gh
safe_unset config-glab
# Action - Services - LongWay
safe_unset config-github
safe_unset config-gitlab

# Information
safe_unset current-host
safe_unset current-repo-status
# Action - Git
safe_unset switch-host
safe_unset switch-repo-status

# Action - Services
safe_unset setup-project
safe_unset setup-repository
safe_unset setup-project-workflow
# Action - Github & Gitlab
safe_unset setup-gh-project
safe_unset setup-glab-project
# Other Way
safe_unset setup-github-project
safe_unset setup-gitlab-project
safe_unset new
safe_unset new-w

# Action - Git
safe_unset setup-workflow

# Action - Git 
safe_unset start
safe_unset to-dev
safe_unset to-prod
# Action - Services - LongWay
safe_unset to-development
safe_unset to-production

# Action - Git - Comments
safe_unset c
safe_unset ca
safe_unset ac
safe_unset reword

# Information
safe_unset current-head
safe_unset current-branch
# Action - Git
safe_unset switch-to
safe_unset to

echo "Restoration completed!"
