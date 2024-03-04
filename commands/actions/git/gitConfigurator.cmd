@echo off
@REM # User information
git config --global user.name %1
git config --global user.email %2
git config --global user.host "github"
git config --global user.repo-status "private"

@REM # Initialization settings
git config --global init.defaultBranch "main"

@REM # Web settings
git config --global web.browser "google-chrome"

@REM # Core settings
git config --global core.pager "cat"
git config --global core.editor "code --wait"
git config --global core.whitespace "-trailing-space"

@REM # Color settings
git config --global color.ui "auto"
git config --global color.branch.current "yellow bold"
git config --global color.branch.local "green bold"
git config --global color.branch.remote "cyan bold"
git config --global color.diff.meta "yellow bold"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"
git config --global color.status.added "green bold"
git config --global color.status.changed "yellow bold"
git config --global color.status.untracked "red bold"

@REM # Delta settings
git config --global delta.features "line-numbers decorations"
git config --global delta.line-numbers "true"
git config --global delta.decorations.minus-style "red bold normal"
git config --global delta.decorations.plus-style "green bold normal"
git config --global delta.decorations.minus-emph-style "white bold red"
git config --global delta.decorations.minus-non-emph-style "red bold normal"
git config --global delta.decorations.plus-emph-style "white bold green"
git config --global delta.decorations.plus-non-emph-style "green bold normal"
git config --global delta.decorations.file-style "yellow bold none"
git config --global delta.decorations.file-decoration-style "yellow box"
git config --global delta.decorations.hunk-header-style "magenta bold"
git config --global delta.decorations.hunk-header-decoration-style "magenta box"
git config --global delta.decorations.minus-empty-line-marker-style "normal normal"
git config --global delta.decorations.plus-empty-line-marker-style "normal normal"
git config --global delta.decorations.line-numbers-right-format "{np:^4}│"

@REM # Diff settings
git config --global diff.mnemonicPrefix "true"
git config --global diff.renames "true"
git config --global diff.submodule "log"
git config --global diff.tool "vscode"

@REM # Alias settings
git config --global alias.reword "commit --amend"

echo Default Configuration is Done!
