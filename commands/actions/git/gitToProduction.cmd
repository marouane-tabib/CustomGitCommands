@echo off
git to-dev %1
git push origin dev
git switch main
git merge dev
git push origin main
git switch base
git merge main
git push origin base