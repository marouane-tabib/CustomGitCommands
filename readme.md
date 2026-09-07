# Custom Git Commands

## Installation

### Prerequisites
- Git
- GitHub CLI (gh)
- GitLab CLI (glab)

### Windows Installation
1. Move to the `C:/` folder.
2. Run the following command to clone the repository:
    ```bash
    git clone https://github.com/marouane-tabib/CustomGitCommands.git
    ```
3. Navigate into the cloned repository:
    ```bash
    cd CustomGitCommands
    ```
4. Click on the `download.cmd` file.
5. Configure Git with your name and email using the following command:
    ```bash
    git launch <user.name> <user.email>
    ```

### Linux/Ubuntu Installation

#### Quick Installation (Recommended)
1. Clone the repository:
    ```bash
    git clone https://github.com/marouane-tabib/CustomGitCommands.git
    ```
2. Navigate into the cloned repository:
    ```bash
    cd CustomGitCommands
    ```
3. Run the installation script (installs dependencies and sets up aliases):
    ```bash
    bash download.sh
    ```
4. Configure Git with your name and email using the following command:
    ```bash
    git launch <user.name> <user.email>
    ```

#### Manual Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/marouane-tabib/CustomGitCommands.git
    ```
2. Navigate into the cloned repository:
    ```bash
    cd CustomGitCommands
    ```
3. Run the registration script:
    ```bash
    bash commands/register.sh
    ```
4. Configure Git with your name and email using the following command:
    ```bash
    git launch <user.name> <user.email>
    ```

### Alternative Installation (Manual)
1. Clone the repository:
    ```bash
    git clone https://github.com/marouane-tabib/CustomGitCommands.git
    ```
2. Move to installation directory:
    ```bash
    mkdir -p ~/.custom-git-commands
    cp -r CustomGitCommands/* ~/.custom-git-commands/
    ```
3. Set environment variable (optional but recommended):
    ```bash
    export CUSTOM_GIT_COMMANDS_DIR="$HOME/.custom-git-commands"
    echo 'export CUSTOM_GIT_COMMANDS_DIR="$HOME/.custom-git-commands"' >> ~/.bashrc
    source ~/.bashrc
    ```
4. Register the git aliases:
    ```bash
    cd ~/.custom-git-commands/commands
    ./register.sh
    ```
5. Configure Git with your name and email:
    ```bash
    git launch <user.name> <user.email>
    ```

### Configuration

##### **Set General Configuration**
```bash
git launch <user.name> <user.email>
```

##### Configure Git
```bash
git config-git <user.name> <user.email>
```

##### Configure Github
```bash
git config-gh
```
```bash
git config-github
```

##### Configure Gitlab
```bash
git config-glab
```
```bash
git config-gitlab
```
## Host Information Options

##### Get Current Hosting Service (Github/GitLab)
```bash
git current-host
```

##### Get Current Creational Repository Status (Public/Private)
```bash
git current-repo-status
```

##### Switch Hosting Service
```bash
git switch-host
```

##### Switch Creational Repository Status
```bash
git switch-repo-status
```

### Setup Options

##### **Setup Project with Default Workflow (main, dev, base)**
```bash
git new-w <repo-name>
```
```bash
git setup-project-workflow <repo-name>
```

##### Setup Project and Create Repository
```bash
git setup-project <repo-name>
```
```bash
git new <repo-name>
```

##### Setup Default Workflow (main, dev, base)
```bash
git setup-workflow
```

### Task's Interaction Options

##### Start New Task
```bash
git start <branch-name|task-key>
```

##### Move Branch to Development
```bash
git to-dev <branch-name|task-key>
```
```bash
git to-development <branch-name|task-key>
```

##### Move Branch to Production
```bash
git to-prod <branch-name|task-key>
```
```bash
git to-production <branch-name|task-key>
```

### Commit Options

##### Commit with Current Branch Name
```bash
git c <commit-message>
```

##### Commit `-am` with Current Branch Name
```bash
git ca <commit-message>
```

##### Commit `add .` with Current Branch Name
```bash
git ac <commit-message>
```

##### Reword Last Commit
```bash
git reword
```

## Other Options

##### Show the HEAD Value of the Current Branch
```bash
git current-head
```

##### Get the Current Branch
```bash
git current-branch
```

##### Switch to Branch
```bash
git to <branch-name>
```

## Authors
[@marouane-tabib](https://www.github.com/marouane-tabib)
