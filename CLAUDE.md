# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Dotfiles repository managed with [GNU Stow](https://www.gnu.org/software/stow/). Files in the repo mirror the home directory structure — stow symlinks them into `~`.

## Deploying

```sh
# From inside the repo directory
stow -t ~ .

# Simulate (dry run)
stow -n -t ~ .

# Remove symlinks
stow -D -t ~ .
```

## Structure

Files and directories sit at their real names and paths relative to `~`:

- `.config/` → `~/.config/` (nvim, fish, kitty, alacritty, hypr, waybar, wpaperd, ranger, i3blocks)
- `.scripts/` → `~/.scripts/` (utility shell scripts, all executable)
- `.i3/` → `~/.i3/` (i3 window manager config)
- `.oh-my-bash/` → `~/.oh-my-bash/`
- Root dotfiles: `.bashrc`, `.bash_profile`, `.gitconfig`, `.tmux.conf`, `.inputrc`, etc.

## Ignored by stow

`.stow-local-ignore` excludes: `README.md`, `CLAUDE.md`, `.gitignore`, `.stow-local-ignore`, `.devcontainer`.
