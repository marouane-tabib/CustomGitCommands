#!/bin/bash

# Git to Production Script for Linux/Ubuntu
# Completes a feature branch and integrates it back into production (base)
#
# Default (worktree mode): rebases the worktree's branch onto base for a
# clean linear history, fast-forwards base, pushes, then removes the
# worktree and the branch. This is also what the 'finish' alias runs.
# -s : soft mode - merge instead of rebase (still worktree-aware)
# -b : branch mode - classic in-place workflow (start -> to-dev -> to-prod),
#      no worktree handling; this was the original to-prod behavior.

set -e

BRANCH_MODE=false
SOFT_MODE=false
NAME=""

while [ $# -gt 0 ]; do
    case "$1" in
        -b)
            BRANCH_MODE=true
            shift
            ;;
        -s)
            SOFT_MODE=true
            shift
            ;;
        *)
            NAME="$1"
            shift
            ;;
    esac
done

if [ "$BRANCH_MODE" = true ]; then
    if [ -z "$NAME" ]; then
        echo "Error: Please provide branch name as argument"
        echo "Usage: git to-prod -b <branch-name>"
        exit 1
    fi
    git to-dev "$NAME"
    git push origin dev
    git switch main
    git merge dev
    git push origin main
    git switch base
    git merge main
    git push origin base
    exit 0
fi

# Worktree mode (default)
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

if [ -z "$NAME" ]; then
    NAME="$CURRENT_BRANCH"
fi

if [ "$NAME" = "base" ] || [ "$NAME" = "main" ] || [ "$NAME" = "dev" ]; then
    echo "Error: refusing to finish protected branch '$NAME'"
    exit 1
fi

WORKTREE_DIR="$(git worktree list --porcelain | awk -v branch="refs/heads/$NAME" '
    /^worktree / { path=$2 }
    /^branch / { if ($2 == branch) print path }
')"

if [ -z "$WORKTREE_DIR" ]; then
    echo "Error: No worktree found for branch '$NAME'"
    echo "Usage: git to-prod [<branch-name>] [-s]   (worktree mode, default)"
    echo "       git to-prod -b <branch-name>       (branch mode, no worktree)"
    exit 1
fi

MAIN_WORKTREE="$(git worktree list --porcelain | head -1 | cut -d' ' -f2)"

(cd "$MAIN_WORKTREE" && git switch base && git pull origin base)

if [ "$SOFT_MODE" = true ]; then
    (cd "$MAIN_WORKTREE" && git merge --no-ff "$NAME")
else
    # worktrees share the same repo/refs, so base is already up to date here
    (cd "$WORKTREE_DIR" && git rebase base)
    (cd "$WORKTREE_DIR" && git push --force-with-lease origin "$NAME")
    (cd "$MAIN_WORKTREE" && git merge --ff-only "$NAME")
fi

(cd "$MAIN_WORKTREE" && git push origin base)

git worktree remove "$WORKTREE_DIR" --force
git branch -d "$NAME" 2>/dev/null || git branch -D "$NAME"
git push origin --delete "$NAME" 2>/dev/null || true

echo "Finished '$NAME': integrated into base and worktree removed"
