# NPM

This role installs NPM (Node Package Manager), the default package manager for Node.js that manages JavaScript packages and dependencies.

## What it does

NPM provides:
- JavaScript package management and installation
- Dependency resolution and version management
- Script running and build automation
- Package publishing to npm registry
- Local and global package installation
- Package.json management for project dependencies
- Security auditing and vulnerability scanning
- Workspace and monorepo support

This is essential for JavaScript and Node.js development, managing frontend dependencies, and building modern web applications.

## Requirements

- macOS with Homebrew installed
- Node.js (should be installed via the nvm role)

## Dependencies

- Homebrew
- Node.js

## Configuration

NPM works out of the box after installation. Configuration can be customized through .npmrc files for registries, authentication, and other settings.
