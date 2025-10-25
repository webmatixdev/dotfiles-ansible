# tree

## Description

tree is a command-line tool that displays directories as trees (with optional color/HTML output). It provides a visual representation of directory structures, making it easy to understand folder hierarchies and file organization. tree is particularly useful for documentation, code reviews, and getting a quick overview of project structures.

## Features

- Display directory structures as tree diagrams
- Colorized output for different file types
- Filter files by patterns and extensions
- Control depth of directory traversal
- Output formats (ASCII, HTML, XML, JSON)
- File and directory statistics
- Size information display
- Exclude hidden files or specific patterns
- Sort files by various criteria

## Installation

This role installs tree via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common tree commands:
- Basic tree: `tree`
- Limit depth: `tree -L 2`
- Show hidden files: `tree -a`
- Only directories: `tree -d`
- Show file sizes: `tree -s`
- Pattern matching: `tree -P "*.js"`
- Exclude patterns: `tree -I "node_modules|.git"`
- Colorized output: `tree -C`
- JSON output: `tree -J`
