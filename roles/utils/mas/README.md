# mas (Mac App Store CLI)

## Description

mas is a command-line interface for the Mac App Store. It allows you to search, install, update, and manage Mac App Store applications from the terminal. It's useful for automating App Store app installations and updates, making it easy to script the setup of Mac applications without manually visiting the App Store.

## Features

- Search Mac App Store from command line
- Install apps using app IDs or names
- Update installed Mac App Store apps
- List installed and available apps
- Sign in to Mac App Store account
- Manage app purchases and downloads
- Bulk operations for multiple apps

## Installation

This role installs mas via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Mac App Store account (for app installations)

## Usage

Common mas commands:
- Search for apps: `mas search "Xcode"`
- Install app by ID: `mas install 497799835`
- List installed apps: `mas list`
- Update all apps: `mas upgrade`
- Show app info: `mas info 497799835`
- Sign in to App Store: `mas signin user@example.com`
- List outdated apps: `mas outdated`
