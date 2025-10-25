# colordiff

## Description

colordiff is a wrapper for the `diff` command that produces the same output but with syntax highlighting. It colorizes the output to make it easier to read differences between files, with additions in green, deletions in red, and changes highlighted appropriately. It's particularly useful for reviewing code changes and file modifications.

## Features

- Colorized diff output for better readability
- Supports all standard diff options and arguments
- Configurable color schemes
- Works with unified, context, and normal diff formats
- Can be used as a drop-in replacement for diff
- Integrates well with version control systems

## Installation

This role installs colordiff via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common colordiff commands:
- Compare two files: `colordiff file1.txt file2.txt`
- Unified diff format: `colordiff -u file1.txt file2.txt`
- Compare directories: `colordiff -r dir1/ dir2/`
- Use with git: `git diff --no-color | colordiff`
- Pipe diff output: `diff file1 file2 | colordiff`
