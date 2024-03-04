@echo off
git switch base
git switch -c %1
git push origin %1