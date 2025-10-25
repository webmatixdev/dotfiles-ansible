# watch

## Description

watch is a command-line tool that runs a specified command repeatedly and displays its output. It's useful for monitoring changes in command output over time, such as watching system processes, file changes, or network status. The tool refreshes the display at regular intervals, making it easy to observe real-time changes in system state or command results.

## Features

- Execute commands repeatedly at specified intervals
- Real-time display updates with highlighting of changes
- Configurable refresh intervals
- Highlight differences between command executions
- Exit on command failure option
- Beep on command failure
- Precise timing control
- Full-screen display with command output
- Compatible with any shell command

## Installation

This role installs watch via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common watch commands:
- Basic monitoring: `watch date`
- Custom interval: `watch -n 5 df -h`
- Highlight differences: `watch -d ls -l`
- Exit on failure: `watch -e ping google.com`
- Beep on changes: `watch -g -n 1 'ls | wc -l'`
- Monitor processes: `watch 'ps aux | grep python'`
- Monitor network: `watch -n 2 netstat -tuln`
