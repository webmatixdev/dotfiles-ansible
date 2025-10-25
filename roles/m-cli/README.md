# m-cli

## Description

m-cli is a macOS command-line tool that provides shortcuts for various system functions. It allows you to control macOS settings, services, and utilities from the terminal, including managing WiFi, Bluetooth, disk utilities, system preferences, and more. It's particularly useful for system administration and automation tasks on macOS.

## Features

- Control WiFi and network settings from command line
- Manage Bluetooth devices and settings
- Disk utility operations (repair, eject, etc.)
- System preference modifications
- Dock configuration and management
- Display and screen management
- User account operations
- Volume and sound control
- System information retrieval

## Installation

This role installs m-cli via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common m-cli commands:
- WiFi management: `m wifi on|off`, `m wifi scan`
- Bluetooth control: `m bluetooth on|off`, `m bluetooth status`
- Disk operations: `m disk verify`, `m disk repair`
- Dock settings: `m dock autohide on|off`, `m dock position bottom|left|right`
- Display control: `m display sleep`, `m display brightness 50`
- System info: `m info`, `m battery`
- Volume control: `m volume 50`, `m volume mute`
