# QuickLook

This role installs QuickLook plugins that enhance Finder's preview capabilities for various file formats.

## What it does

This role installs the following QuickLook plugins:

**QuickLook CSV:**
- Direct preview of CSV files in Finder using QuickLook (spacebar)
- Formatted table display of CSV data with proper columns
- Support for various CSV formats and delimiters

**QuickLook JSON:**
- Direct preview of JSON files with syntax highlighting
- Formatted JSON display with proper indentation
- Easy inspection of JSON structure without opening editors

Both plugins integrate with macOS Finder's native preview functionality and improve productivity when browsing data files.

This is particularly useful for developers, data analysts, and anyone who frequently works with structured data files and needs quick previews without opening full applications.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

QuickLook CSV works out of the box after installation. The plugin integrates directly with macOS QuickLook and requires no additional configuration. After installation, you may need to restart Finder or run `qlmanage -r` to refresh QuickLook plugins.
