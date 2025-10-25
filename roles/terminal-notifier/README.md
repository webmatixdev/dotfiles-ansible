# terminal-notifier

## Description

terminal-notifier is a command-line tool to send User Notifications on macOS. It allows you to send native macOS notifications from scripts, command-line tools, or any application, making it useful for alerting users when long-running processes complete or when specific events occur. It integrates seamlessly with the macOS notification system.

## Features

- Send native macOS notifications from command line
- Customize notification title, message, and subtitle
- Set notification sound and appearance
- Support for notification actions and replies
- Integration with scripts and automation tools
- Notification grouping and bundling
- Custom app icons and identifiers
- Interactive notifications with user input

## Installation

This role installs terminal-notifier via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common terminal-notifier commands:
- Basic notification: `terminal-notifier -message "Hello World"`
- With title: `terminal-notifier -title "Alert" -message "Task completed"`
- With sound: `terminal-notifier -message "Done!" -sound default`
- With subtitle: `terminal-notifier -title "Build" -subtitle "Success" -message "Deployment finished"`
- Open URL on click: `terminal-notifier -message "Click to open" -open "https://example.com"`
- Custom app name: `terminal-notifier -message "Hello" -sender com.apple.Terminal`
