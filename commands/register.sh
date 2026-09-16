#!/bin/bash

# Custom Git Command Registration Script for Linux/Ubuntu
# This script registers all git aliases globally

set -e  # Exit on error

# Get the installation directory
CUSTOM_GIT_COMMANDS_DIR="${CUSTOM_GIT_COMMANDS_DIR:-$HOME/.custom-git-commands}"

echo "Running custom Git command registrator"
echo "Installation directory: $CUSTOM_GIT_COMMANDS_DIR"

# Action - Git
# Skip git pull if not in a git repository
if git rev-parse --git-dir > /dev/null 2>&1; then
    git pull origin main
fi
git config --global alias.alias.register "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/register.sh\""
git config --global alias.alias.restore "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/restore.sh\""
git config --global alias.alias.refresh "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/refresh.sh\""

# Action - Shortcut
git config --global alias.launch "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/managers/launchor.sh\""
# Action - Git
git config --global alias.config-git "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitConfigurator.sh\""
# Action - Services
git config --global alias.config-gh "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/services/github/ghConfigurator.sh\""
git config --global alias.config-glab "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/services/gitlab/glabConfigurator.sh\""
    # Action - Services - LongWay
    git config --global alias.config-github config-gh
    git config --global alias.config-gitlab config-glab

# Information
git config --global alias.current-host "config --get user.host"
git config --global alias.current-repo-status "config --get user.repo-status"
# Action - Git
git config --global alias.switch-host "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitSwitchHost.sh\""
git config --global alias.switch-repo-status "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitSwitchRepoStatus.sh\""

# Action - Services
git config --global alias.setup-project "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/managers/setupProject.sh\""
git config --global alias.setup-repository "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/managers/setupRepository.sh\""
git config --global alias.setup-project-workflow "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/managers/setupProjectWorkflow.sh\""
# Action - Github & Gitlab
git config --global alias.setup-gh-project "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/services/github/ghSetupProject.sh\""
git config --global alias.setup-glab-project "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/services/gitlab/glabSetupProject.sh\""
    # Other Way
    git config --global alias.setup-github-project setup-gh-project
    git config --global alias.setup-gitlab-project setup-glab-project
    git config --global alias.new setup-project
    git config --global alias.new-w setup-project-workflow

# Action - Git
git config --global alias.setup-workflow "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitSetupWorkflow.sh\""

# Action - Git 
git config --global alias.start "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitStart.sh\""
git config --global alias.to-dev "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitToDevelopment.sh\""
git config --global alias.to-prod "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitToProduction.sh\""
    # Action - Services - LongWay
    git config --global alias.to-development to-dev
    git config --global alias.to-production to-prod
    git config --global alias.finish to-prod

# Action - Git - Comments
git config --global alias.c  "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitCustomCommit.sh\""
git config --global alias.ca  "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitCustomCommitAll.sh\""
git config --global alias.ac  "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitAddAllCustomCommit.sh\""
git config --global alias.reword  "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitReword.sh\""

# Information
git config --global alias.current-head "log -1 --pretty=format:%H"
git config --global alias.current-branch "rev-parse --abbrev-ref HEAD"
git config --global alias.current-commit "!\"$CUSTOM_GIT_COMMANDS_DIR/commands/actions/git/gitCurrentCommit.sh\""
# Action - Git
git config --global alias.to switch

echo "Registration completed!"
