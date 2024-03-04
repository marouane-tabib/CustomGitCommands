@echo off
echo Running custom Git command registrator
@REM Action - Git
git pull origin main
git config --global alias.alias.register "!\"C:\CustomGitCommands\commands\register.cmd""
git config --global alias.alias.restore "!\"C:\CustomGitCommands\commands\restore.cmd""
git config --global alias.alias.refresh "!\"C:\CustomGitCommands\commands\refresh.cmd""

@REM Action - Shortcut
git config --global alias.launch "!\"C:\CustomGitCommands\commands\actions\managers\launchor.cmd""
@REM Action - Git
git config --global alias.config-git "!\"C:\CustomGitCommands\commands\actions\git\gitConfigurator.cmd""
@REM Action - Services
git config --global alias.config-gh "!\"C:\CustomGitCommands\commands\actions\services\github\ghConfigurator.cmd""
git config --global alias.config-glab "!\"C:\CustomGitCommands\commands\actions\services\gitlab\glabConfigurator.cmd""
    @REM Action - Services - LongWay
    git config --global alias.config-github config-gh
    git config --global alias.config-gitlab config-glab

@REM Information
git config --global alias.current-host "config --get user.host"
git config --global alias.current-repo-status "config --get user.repo-status"
@REM Action - Git
git config --global alias.switch-host "!\"C:\CustomGitCommands\commands\actions\git\gitSwitchHost.cmd""
git config --global alias.switch-repo-status "!\"C:\CustomGitCommands\commands\actions\git\gitSwitchRepoStatus.cmd""

@REM Action - Services
git config --global alias.setup-project "!\"C:\CustomGitCommands\commands\actions\managers\setupProject.cmd""
git config --global alias.setup-repository "!\"C:\CustomGitCommands\commands\actions\managers\setupRepository.cmd""
git config --global alias.setup-project-workflow "!\"C:\CustomGitCommands\commands\actions\managers\setupProjectWorkflow.cmd""
@REM Action - Github & Gitlab
git config --global alias.setup-gh-project "!\"C:\CustomGitCommands\commands\actions\services\github\ghSetupProject.cmd""
git config --global alias.setup-glab-project "!\"C:\CustomGitCommands\commands\actions\services\gitlab\glabSetupProject.cmd""
    @REM Other Way
    git config --global alias.setup-github-project setup-gh-project
    git config --global alias.setup-gitlab-project setup-glab-project
    git config --global alias.new setup-project
    git config --global alias.new-w setup-project-workflow

@REM Action - Git
git config --global alias.setup-workflow "!\"C:\CustomGitCommands\commands\actions\git\gitSetupWorkflow.cmd""

@REM Action - Git 
git config --global alias.start "!\"C:\CustomGitCommands\commands\actions\git\gitStart.cmd""
git config --global alias.to-dev "!\"C:\CustomGitCommands\commands\actions\git\gitToDevelopment.cmd""
git config --global alias.to-prod "!\"C:\CustomGitCommands\commands\actions\git\gitToProduction.cmd""
    @REM Action - Services - LongWay
    git config --global alias.to-development to-dev
    git config --global alias.to-production to-prod

@REM Action - Git - Comments
git config --global alias.c  "!\"C:\CustomGitCommands\commands\actions\git\gitCustomCommit.cmd""
git config --global alias.ca  "!\"C:\CustomGitCommands\commands\actions\git\gitCustomCommitAll.cmd""
git config --global alias.ac  "!\"C:\CustomGitCommands\commands\actions\git\gitAddAllCustomCommit.cmd""
git config --global alias.reword  "!\"C:\CustomGitCommands\commands\actions\git\gitReword.cmd""

@REM @REM Information
git config --global alias.current-head "log -1 --pretty=format:"%%H""
git config --global alias.current-branch "rev-parse --abbrev-ref HEAD"
git config --global alias.current-commit "!\"C:\CustomGitCommands\commands\actions\git\gitCurrentCommit.cmd""
@REM @REM Action - Git
git config --global alias.to switch

echo Registration completed!
