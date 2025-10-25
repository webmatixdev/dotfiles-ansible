# htop

## Description

htop is an interactive process viewer for Unix systems. It's an enhanced version of the traditional `top` command with a more user-friendly interface, color coding, and additional features like process tree view and mouse support. It provides real-time information about running processes, system load, memory usage, and CPU utilization.

## Features

- Interactive process viewer with color coding
- Mouse support for selecting and managing processes
- Tree view of processes showing parent-child relationships
- Customizable display columns and meters
- Process filtering and searching capabilities
- Kill processes directly from the interface
- Support for multiple CPU cores visualization
- Memory and swap usage monitoring

## Installation

This role installs htop via Homebrew on macOS systems and manages your custom configuration.

## Requirements

- macOS
- Homebrew

## Configuration

This role manages your htop configuration file at `~/.config/htop/htoprc` which includes:
- Custom CPU and memory meter layouts
- Column display preferences
- Color scheme settings
- Mouse interaction settings
- Process sorting preferences

## Usage

Common htop usage:
- Launch htop: `htop`
- Kill process: Select process and press `F9` or `k`
- Search processes: Press `F3` or `/`
- Filter processes: Press `F4` or `\`
- Tree view: Press `F5` or `t`
- Sort by column: Press `F6` or `>`
