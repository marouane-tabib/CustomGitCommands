@echo off
git init
git add .
git commit -m "Initial Commit..."
git branch -M main
git setup-repository %1
git remote add origin https://github.com/marouane-tabib/%1
git remote set-url origin https://github.com/marouane-tabib/%1
git push origin main