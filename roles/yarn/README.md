# Yarn

## Description

Yarn is a fast, reliable, and secure dependency management tool for JavaScript/Node.js projects. It's an alternative to npm that provides features like offline caching, deterministic installs, and better performance through parallel downloads.

## Features

- Fast parallel package installation
- Offline caching for previously installed packages
- Deterministic installs with lockfiles
- Workspaces for monorepo management
- Plugin system for extensibility
- Better security with integrity checking

## Installation

This role installs yarn via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Node.js (recommended)

## Usage

Common yarn commands:
- Install dependencies: `yarn install`
- Add a package: `yarn add package-name`
- Remove a package: `yarn remove package-name`
- Run scripts: `yarn run script-name`
- Initialize new project: `yarn init`
