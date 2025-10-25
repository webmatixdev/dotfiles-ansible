# NVM

This role installs NVM (Node Version Manager), a tool for managing multiple Node.js versions on a single machine.

## What it does

NVM provides:
- Multiple Node.js version installation and management
- Easy switching between Node.js versions per project
- Automatic Node.js version detection from .nvmrc files
- Global and local package management across versions
- Support for LTS and latest Node.js releases
- Shell integration for seamless version switching
- Migration of npm packages between Node versions

This is essential for JavaScript developers who need to work with different Node.js versions across various projects.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

NVM requires shell integration setup for version switching. The role may include shell configuration for automatic version detection.
