@echo off

for /f "delims=" %%i in ('git config --get user.host') do set "current_host=%%i"

if "%current_host%"=="github" (
    git setup-gh-project %1
) else if "%current_host%"=="gitlab" (
    git setup-glab-project %1
)