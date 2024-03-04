@echo off

for /f "delims=" %%i in ('git config --get user.repo-status') do set "current_repo_status=%%i"

if "%current_repo_status%"=="public" (
    glab repo create %1 --public
) else if "%current_repo_status%"=="private" (
    glab repo create %1 --private
)

echo GitLab Repository created successfully (%current_repo_status%) : %1