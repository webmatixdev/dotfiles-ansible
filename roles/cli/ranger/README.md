# ranger

## Description

ranger is a console file manager with VI key bindings. It provides a minimalistic and nice curses interface with a view on the directory hierarchy. It ships with rifle, a file launcher that can automatically find out which program to use for what file type. ranger is designed to be efficient for users who prefer keyboard navigation and vim-style commands.

## Features

- VI-style key bindings for navigation
- Three-column layout showing directory tree
- File preview functionality
- Customizable with Python plugins
- Built-in file launcher (rifle)
- Tab support for multiple directories
- Bookmarks and quick navigation
- Bulk renaming capabilities
- Image preview support
- Integration with external programs

## Installation

This role installs ranger via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common ranger commands:
- Launch ranger: `ranger`
- Navigate: `h/j/k/l` (vim-style) or arrow keys
- Enter directory: `l` or `Enter`
- Go up directory: `h` or `Backspace`
- Create file: `:touch filename`
- Create directory: `:mkdir dirname`
- Delete: `dd` (move to trash)
- Copy: `yy`
- Paste: `pp`
- Quit: `q` or `:q`
