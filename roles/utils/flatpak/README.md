# Flatpak

This role installs Flatpak, a universal package management system for Linux applications that provides sandboxed application distribution.

## What it does

Flatpak provides:
- Sandboxed application installation and execution
- Universal package format for Linux applications
- Isolation between applications and the host system
- Automatic dependency management
- Support for multiple application sources (Flathub, etc.)
- Cross-distribution compatibility

This is particularly useful for installing Linux applications in a secure, isolated environment with consistent behavior across different Linux distributions.

## Requirements

- Linux distribution with Flatpak support
- Homebrew (for macOS installation)

## Dependencies

- Homebrew (on macOS)
- Package manager (on Linux)

## Configuration

Flatpak works out of the box after installation. Users can add repositories like Flathub and install applications using flatpak commands or GUI software centers.
