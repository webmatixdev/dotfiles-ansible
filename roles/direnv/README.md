# direnv

## Description

direnv is an environment switcher for the shell. It allows you to load and unload environment variables depending on the current directory. This is useful for managing project-specific environment variables, Python virtual environments, or different versions of tools per project. When you enter a directory with a `.envrc` file, direnv automatically loads the environment variables defined in it.

## Features

- Automatic loading/unloading of environment variables per directory
- Support for multiple shell environments (bash, zsh, fish)
- Integration with various development tools and language managers
- Security model that requires explicit approval for new .envrc files
- Support for nested environments and inheritance
- Works with Python virtualenvs, Node.js versions, and more

## Installation

This role installs direnv via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Shell integration (requires adding hook to shell profile)

## Usage

Common direnv workflow:
- Create `.envrc` file in project directory: `echo 'export PROJECT_ENV=development' > .envrc`
- Allow the file: `direnv allow`
- Enter directory to auto-load environment
- Check status: `direnv status`
- Edit environment: `direnv edit`

Note: After installation, you need to add the direnv hook to your shell profile (e.g., `.zshrc`)
