# trash

## Description

trash is a command-line tool that moves files to the macOS Trash instead of permanently deleting them with `rm`. It provides a safer alternative to `rm` by allowing you to recover accidentally deleted files from the Trash. This is particularly useful for preventing accidental permanent file deletion and maintaining the ability to recover files through the standard macOS Trash interface.

## Features

- Safe file deletion by moving to Trash
- Compatible with macOS Trash system
- Recoverable deletions through Finder
- Simple drop-in replacement for `rm`
- Preserves file metadata and permissions
- Works with aliases and symbolic links
- Batch file operations support
- Integration with shell scripts

## Installation

This role installs trash via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common trash commands:
- Delete file safely: `trash file.txt`
- Delete multiple files: `trash file1.txt file2.txt`
- Delete directory: `trash directory/`
- Use in scripts: `trash *.log`
- Alternative to rm: `alias rm=trash` (in shell config)

Note: Files moved to trash can be recovered from the macOS Trash in Finder.
