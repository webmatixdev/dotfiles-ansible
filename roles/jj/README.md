# jj (Jujutsu)

## Description

jj (Jujutsu) is a Git-compatible version control system that maintains compatibility with Git while providing a more user-friendly interface and powerful features. It offers a simpler mental model for version control with automatic conflict resolution, better handling of merge conflicts, and a more intuitive command structure compared to traditional Git.

## Features

- Git-compatible distributed version control
- Automatic conflict resolution and handling
- Simplified branching and merging model
- Built-in support for evolving commits (similar to Mercurial's evolve)
- Better handling of partial commits and file changes
- Immutable operations with automatic backup
- Clean and intuitive command-line interface
- Advanced change tracking and history manipulation

## Installation

This role installs jj via Homebrew on macOS systems and manages your custom configuration.

## Requirements

- macOS
- Homebrew

## Configuration

This role manages your jj configuration file at `~/.config/jj/config.toml` which includes:
- User information (name and email)
- Editor preferences (vim)
- UI settings (pager, default command)
- Diff editor configuration

## Usage

Common jj commands:
- Initialize repository: `jj init`
- Check status: `jj st`
- Create new change: `jj new`
- Show log: `jj log`
- Describe change: `jj describe`
- Edit files: `jj split` or `jj squash`
- Push to remote: `jj git push`
