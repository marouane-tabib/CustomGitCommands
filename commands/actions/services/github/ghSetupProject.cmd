@echo off

for /f "delims=" %%i in ('git config --get user.repo-status') do set "current_repo_status=%%i"

if "%current_repo_status%"=="public" (
    gh repo create %1 --public
) else if "%current_repo_status%"=="private" (
    gh repo create %1 --private
)

echo Github Repository created successfully (%current_repo_status%) : %1