@echo off

REM Assume user.host is set to either "github" or "gitlab"
for /f "delims=" %%i in ('git config --get user.host') do set "current_host=%%i"

if "%current_host%"=="github" (
    git config user.host gitlab
) else if "%current_host%"=="gitlab" (
    git config user.host github
)
for /f "delims=" %%i in ('git config --get user.host') do set "current_host=%%i"

REM Display the updated user.host value
echo Default host value updated successfully to: %current_host%