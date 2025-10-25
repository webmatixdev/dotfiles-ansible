# mdv (Markdown Viewer)

## Description

mdv (Markdown Viewer) is a command-line tool for viewing markdown files in the terminal with syntax highlighting and formatting. It converts markdown to formatted text output, making it easy to read documentation and markdown files without opening a separate application. It provides a quick way to preview markdown content directly in your terminal.

## Features

- Terminal-based markdown rendering
- Syntax highlighting for code blocks
- Customizable color themes
- Support for tables, lists, and formatting
- File watching mode for live updates
- Adjustable terminal width formatting
- Link highlighting and reference display
- Image placeholder rendering

## Installation

This role installs mdv via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common mdv commands:
- View markdown file: `mdv README.md`
- Use specific theme: `mdv --theme dark README.md`
- Set terminal width: `mdv --cols 80 README.md`
- Watch file for changes: `mdv --watch README.md`
- Show file info: `mdv --info README.md`
- Pipe markdown: `cat file.md | mdv`
