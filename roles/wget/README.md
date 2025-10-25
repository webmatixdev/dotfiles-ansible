# wget

## Description

wget is a command-line utility for downloading files from web servers. It supports HTTP, HTTPS, and FTP protocols and can download files recursively, resume interrupted downloads, and handle various authentication methods.

## Features

- Download files from HTTP, HTTPS, and FTP servers
- Recursive downloading of entire websites
- Resume interrupted downloads
- Support for various authentication methods
- Bandwidth throttling and rate limiting
- Mirror websites locally

## Installation

This role installs wget via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common wget commands:
- Download a file: `wget https://example.com/file.zip`
- Download recursively: `wget -r https://example.com/`
- Resume download: `wget -c https://example.com/largefile.zip`
- Download in background: `wget -b https://example.com/file.zip`
