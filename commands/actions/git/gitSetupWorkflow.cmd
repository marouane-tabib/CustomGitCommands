@echo off
git switch main
git switch -c base
git push origin base
git switch -c dev
git push origin dev