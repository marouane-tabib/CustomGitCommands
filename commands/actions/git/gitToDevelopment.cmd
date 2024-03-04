@echo off
git switch %1
git push origin %1
git switch dev
git merge %1
