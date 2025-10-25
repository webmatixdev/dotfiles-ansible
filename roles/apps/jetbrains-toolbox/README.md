# JetBrains Toolbox

This role installs JetBrains Toolbox, a control panel for JetBrains developer tools that allows you to manage installations, updates, and licensing for all JetBrains IDEs from a single application.

## What it does

JetBrains Toolbox provides:
- Centralized management of all JetBrains IDEs (IntelliJ IDEA, PyCharm, WebStorm, etc.)
- Automatic updates for installed JetBrains tools
- License management and activation
- Project management and quick access to recent projects
- Multiple version support (stable, EAP, custom builds)
- Tool installation and uninstallation
- Settings synchronization across JetBrains products

This complements individual IDE installations by providing a unified management interface for the entire JetBrains ecosystem.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

JetBrains Toolbox stores its configuration in `~/Library/Application Support/JetBrains/Toolbox/` including:
- Application state and settings (.appState.json, .settings.json)
- Installed apps and their configurations
- Account information and licenses
- Project history and preferences
- Plugin management data

The toolbox automatically manages IDE installations and updates based on user preferences.
