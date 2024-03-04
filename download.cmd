@echo off
echo Running custom Git command
winget install --id Git.Git
winget install glab.glab
winget install --id GitHub.cli
git config --global alias.register "!\"C:\CustomGitCommands\commands\register.cmd""
git register
