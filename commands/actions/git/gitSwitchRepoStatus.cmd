@echo off

REM Assume user.repo-status is set to either "public" or "private"
for /f "delims=" %%i in ('git config --get user.repo-status') do set "current_repo_status=%%i"

if "%current_repo_status%"=="public" (
    git config user.repo-status private
) else if "%current_repo_status%"=="private" (
    git config user.repo-status public
)
for /f "delims=" %%i in ('git config --get user.repo-status') do set "current_repo_status=%%i"

REM Display the updated user.host value
echo Default repo status value updated successfully to: %current_repo_status%