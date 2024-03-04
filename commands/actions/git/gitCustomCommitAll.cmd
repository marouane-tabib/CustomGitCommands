@echo off
setlocal enabledelayedexpansion

git commit -am %1
if errorlevel 1 (
    echo No changes added to commit.
) else (
    for /f "delims=" %%i in ('git rev-parse --abbrev-ref HEAD') do set "currentBranch=%%i"
    for /f "delims=" %%j in ('git current-commit') do set "currentCommit=%%j"
cls 
    git commit --amend -m "!currentBranch! | !currentCommit!"
    if errorlevel 1 (
        echo Exception...
    ) else (
        echo Done...
    )
)