# XQuartz

This role installs XQuartz, an open-source version of the X.Org X Window System that runs on macOS, providing X11 windowing system support for running Unix/Linux GUI applications.

## What it does

XQuartz provides:
- X11 windowing system support on macOS
- Compatibility layer for Unix/Linux GUI applications
- X11 forwarding support for SSH connections
- OpenGL acceleration for X11 applications
- Integration with macOS clipboard and window management
- Support for remote X11 applications over network
- Xterm terminal emulator and basic X11 utilities
- Font rendering and input method support

This is particularly useful for developers and users who need to run Unix/Linux GUI applications that require X11, or for remote access to Linux systems with GUI applications.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

XQuartz works out of the box after installation. Users may need to log out and back in for full X11 integration. Advanced users can configure X11 preferences, security settings, and display options through the XQuartz preferences panel.
