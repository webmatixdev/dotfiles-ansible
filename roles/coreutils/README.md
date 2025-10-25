# GNU Coreutils

## Description

GNU coreutils provides the basic file, shell and text manipulation utilities of the GNU operating system. These are enhanced versions of standard Unix commands like ls, cp, mv, cat, etc. with additional features and consistent behavior across platforms. On macOS, this provides GNU versions of commands that are prefixed with 'g' (e.g., gls, gcp) to avoid conflicts with BSD versions.

## Features

- Enhanced versions of basic Unix utilities
- Consistent behavior across different platforms
- Additional options and features not available in BSD variants
- Better performance for many operations
- Support for extended attributes and modern file systems
- Improved scripting capabilities

## Installation

This role installs coreutils via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common GNU coreutils commands (prefixed with 'g' on macOS):
- List files with colors: `gls --color=auto`
- Copy with progress: `gcp -v source dest`
- Move files: `gmv file1 file2`
- Display file contents: `gcat file.txt`
- Word/line/character count: `gwc file.txt`
- Sort files: `gsort file.txt`

Note: You can create aliases in your shell to use GNU versions without the 'g' prefix.
