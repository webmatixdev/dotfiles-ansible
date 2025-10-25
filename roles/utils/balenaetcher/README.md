# BalenaEtcher

This role installs BalenaEtcher, a tool for flashing OS images to SD cards and USB drives safely and easily.

## What it does

BalenaEtcher provides:
- Safe and easy flashing of OS images to SD cards and USB drives
- Validation of flashed images to ensure data integrity
- Cross-platform support with a user-friendly interface
- Protection against accidentally writing to system drives
- Support for various image formats (IMG, ISO, ZIP, etc.)
- Progress tracking and error reporting during flashing

This is particularly useful for creating bootable drives for Raspberry Pi, Arduino projects, and other single-board computers or embedded systems.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

BalenaEtcher stores its configuration in `~/Library/Application Support/balenaEtcher/` and preferences in `~/Library/Preferences/io.balena.etcher.plist`. The application works out of the box with sensible defaults for safe image flashing.
