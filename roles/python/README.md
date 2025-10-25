# Python

This role installs Python and related tools for Python development and application management.

## What it does

This role installs:

**Python 3:**
- Modern Python interpreter and runtime
- pip package manager for Python libraries
- Standard library and development tools
- Cross-platform Python development environment

**pipx:**
- Tool for installing Python CLI applications in isolated environments
- Global access to Python applications while keeping dependencies separated
- Automatic creation and management of virtual environments for each application
- Simple commands to install, upgrade, and uninstall Python applications
- Prevents dependency conflicts between Python CLI tools

This provides a complete Python ecosystem for both development and managing Python-based command-line applications.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

After installation, Python 3 and pipx work out of the box. Common pipx usage:
- `pipx install <package>` - Install a Python application in isolation
- `pipx list` - List installed applications
- `pipx upgrade <package>` - Upgrade an application
- `pipx uninstall <package>` - Remove an application

Applications installed via pipx are available globally but run in isolated virtual environments to prevent dependency conflicts.
