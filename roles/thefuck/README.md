# thefuck

## Description

thefuck is a command-line tool that corrects errors in previous console commands. When you type a command incorrectly, you can type `fuck` and it will suggest corrections for your previous command. It's particularly useful for fixing typos, missing sudo, wrong arguments, and other common command-line mistakes. It learns from your corrections and becomes more accurate over time.

## Features

- Automatically corrects previous command errors
- Supports numerous error types and command-line tools
- Machine learning improves suggestions over time
- Customizable rules and settings
- Shell integration (bash, zsh, fish, etc.)
- Extensible plugin system
- Fast command correction algorithms
- Safe execution with confirmation prompts

## Installation

This role installs thefuck via Homebrew on macOS systems and manages your custom configuration.

## Requirements

- macOS
- Homebrew
- Shell integration (requires adding alias to shell profile)

## Configuration

This role manages your thefuck configuration files at `~/.config/thefuck/` which includes:
- Custom settings in `settings.py`
- Custom rules in the `rules/` directory

## Usage

After installation, add to your shell profile (e.g., `.zshrc`):
```bash
eval $(thefuck --alias)
```

Common usage:
- After a failed command, type: `fuck`
- Accept suggestion: `Enter`
- Decline suggestion: `Ctrl+C`
- Configure: `thefuck --alias`
