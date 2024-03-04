@echo off
echo Running custom Git command restore
@REM Action - Git
@REM git config --global --unset-all alias.alias.register
@REM git config --global --unset-all alias.alias.restore
@REM git config --global --unset-all alias.alias.refresh

@REM Action - Shortcut
git config --global --unset-all alias.launch
@REM Action - Git
git config --global --unset-all alias.config-git
@REM Action - Services
git config --global --unset-all alias.config-gh
git config --global --unset-all alias.config-glab
@REM Action - Services - LongWay
git config --global --unset-all alias.config-github
git config --global --unset-all alias.config-gitlab

@REM Information
git config --global --unset-all alias.current-host
git config --global --unset-all alias.current-repo-status
@REM Action - Git
git config --global --unset-all alias.switch-host
git config --global --unset-all alias.switch-repo-status

@REM Action - Services
git config --global --unset-all alias.setup-project
git config --global --unset-all alias.setup-repository
git config --global --unset-all alias.setup-project-workflow
@REM Action - Github & Gitlab
git config --global --unset-all alias.setup-gh-project
git config --global --unset-all alias.setup-glab-project
@REM Other Way
git config --global --unset-all alias.setup-github-project
git config --global --unset-all alias.setup-gitlab-project
git config --global --unset-all alias.new
git config --global --unset-all alias.new-w

@REM Action - Git
git config --global --unset-all alias.setup-workflow

@REM Action - Git 
git config --global --unset-all alias.start
git config --global --unset-all alias.to-dev
git config --global --unset-all alias.to-prod
@REM Action - Services - LongWay
git config --global --unset-all alias.to-development
git config --global --unset-all alias.to-production

@REM Action - Git - Comments
git config --global --unset-all alias.c
git config --global --unset-all alias.ca
git config --global --unset-all alias.ac
git config --global --unset-all alias.reword

@REM Information
git config --global --unset-all alias.current-head
git config --global --unset-all alias.current-branch
@REM Action - Git
git config --global --unset-all alias.switch-to
git config --global --unset-all alias.to

echo Restoration completed!
