#!/bin/bash

# Git Start Script for Linux/Ubuntu
# Starts a new feature branch from base
# Default: creates an isolated git worktree (agentic/parallel-friendly)
# -b: classic mode, just switch/create the branch in the current working copy

set -e

BRANCH_MODE=false
NAME=""

while [ $# -gt 0 ]; do
    case "$1" in
        -b)
            BRANCH_MODE=true
            shift
            ;;
        *)
            NAME="$1"
            shift
            ;;
    esac
done

if [ -z "$NAME" ]; then
    echo "Error: Please provide branch name as argument"
    echo "Usage: git start <branch-name> [-b]"
    echo "  (default) creates a worktree for <branch-name> off base"
    echo "  -b        creates/switches the branch in-place, no worktree"
    exit 1
fi

git fetch origin base
git switch base
git pull origin base

if [ "$BRANCH_MODE" = true ]; then
    git switch -c "$NAME"
    git push origin "$NAME"
    exit 0
fi

REPO_ROOT="$(git rev-parse --show-toplevel)"
REPO_NAME="$(basename "$REPO_ROOT")"
WORKTREE_DIR="$(dirname "$REPO_ROOT")/${REPO_NAME}-${NAME}"

if [ -e "$WORKTREE_DIR" ]; then
    echo "Error: Worktree path already exists: $WORKTREE_DIR"
    exit 1
fi

git worktree add -b "$NAME" "$WORKTREE_DIR" base
(cd "$WORKTREE_DIR" && git push origin "$NAME")

echo "Worktree created at $WORKTREE_DIR on branch '$NAME' (from base)"
