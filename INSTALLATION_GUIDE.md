# Custom Git Commands - Installation Guide

## Quick Start (Linux/Ubuntu)

### 1. Clone the repository
```bash
git clone https://github.com/marouane-tabib/CustomGitCommands.git
cd CustomGitCommands
```

### 2. Run the installation script
This will install all dependencies (Git, GitHub CLI, GitLab CLI) and set up the git aliases:
```bash
bash download.sh
```

### 3. Configure Git with your credentials
```bash
git launch "Your Name" "your.email@example.com"
```

## Manual Installation (Linux/Ubuntu)

If you prefer to install dependencies manually:

### 1. Install dependencies
```bash
# Install Git
sudo apt update
sudo apt install -y git

# Install GitHub CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh

# Install GitLab CLI
curl -L https://github.com/progrium/glab/releases/latest/download/glab-linux-amd64.tgz | tar xz
sudo mv glab-linux-amd64/glab /usr/local/bin/
rm -rf glab-linux-amd64
```

### 2. Clone and setup
```bash
git clone https://github.com/marouane-tabib/CustomGitCommands.git
cd CustomGitCommands
bash commands/register.sh
```

### 3. Configure Git
```bash
git launch "Your Name" "your.email@example.com"
```

## Windows Installation

1. Clone the repository to `C:/`
2. Navigate to `C:/CustomGitCommands`
3. Run `download.cmd`
4. Configure Git: `git launch "Your Name" "your.email@example.com"`

## Verification

Check that the aliases are registered:
```bash
git config --global --get-regexp alias
```

You should see all the custom aliases listed.

## Common Commands

### Configuration
- `git launch <name> <email>` - Full configuration setup
- `git config-git <name> <email>` - Configure Git only
- `git config-gh` - Configure GitHub
- `git config-glab` - Configure GitLab

### Project Setup
- `git new <repo-name>` - Setup new project with repository
- `git new-w <repo-name>` - Setup project with workflow
- `git setup-workflow` - Setup branch workflow (main, dev, base)

### Branch Management
- `git start <branch-name>` - Start new feature branch
- `git to-dev <branch-name>` - Merge to development
- `git to-prod <branch-name>` - Merge to production

### Commits
- `git c <message>` - Commit with branch name
- `git ca <message>` - Commit all with branch name
- `git ac <message>` - Add all and commit with branch name
- `git reword` - Amend last commit

### Information
- `git current-host` - Show current hosting service
- `git current-repo-status` - Show repository status
- `git switch-host` - Switch between GitHub/GitLab
- `git switch-repo-status` - Switch between public/private

## Troubleshooting

### Script not executable
```bash
chmod +x commands/*.sh
chmod +x commands/actions/*/*.sh
```

### Aliases not working
```bash
# Re-register aliases
cd CustomGitCommands/commands
./register.sh
```

### Environment variable issues
```bash
export CUSTOM_GIT_COMMANDS_DIR="$HOME/.custom-git-commands"
echo 'export CUSTOM_GIT_COMMANDS_DIR="$HOME/.custom-git-commands"' >> ~/.bashrc
source ~/.bashrc
```

## File Structure

```
CustomGitCommands/
├── commands/
│   ├── register.sh          # Main registration script
│   ├── refresh.sh           # Refresh aliases
│   ├── restore.sh           # Remove all aliases
│   └── actions/
│       ├── git/             # Git-related commands
│       ├── managers/        # Project management commands
│       └── services/        # GitHub/GitLab service commands
├── download.sh              # Linux installation script
├── download.cmd             # Windows installation script
└── readme.md                # Documentation
```

## Support

For issues or questions, visit the repository:
https://github.com/marouane-tabib/CustomGitCommands
