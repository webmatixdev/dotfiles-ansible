# JDownloader

This role installs JDownloader, an open-source download management tool that automates downloading files from one-click hosting sites.

## What it does

JDownloader provides:
- Automated downloading from file hosting services (Rapidshare, Megaupload, etc.)
- Captcha recognition and handling
- Automatic reconnection on connection drops
- Batch downloading capabilities
- Link extraction from text files and web pages
- Download scheduling and bandwidth control
- Plugin system for supporting additional hosting sites
- Remote control capabilities via web interface

This is particularly useful for managing large numbers of downloads from file hosting services and automating the download process.

## Requirements

- macOS with Homebrew installed
- Java Runtime Environment

## Dependencies

- Homebrew
- Java (should be installed via the jdk role)

## Configuration

JDownloader creates its configuration files automatically on first run. The application stores settings, download history, and plugins in its application directory. Users can configure download paths, bandwidth limits, and hosting site credentials through the GUI.
