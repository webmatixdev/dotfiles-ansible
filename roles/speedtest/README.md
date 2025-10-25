# speedtest-cli

## Description

speedtest-cli is a command-line interface for testing internet bandwidth using speedtest.net. It allows you to measure your internet connection's download and upload speeds, ping, and other network metrics directly from the terminal without needing a web browser. It's useful for network troubleshooting, monitoring connection quality, and automated testing.

## Features

- Download and upload speed testing
- Ping and latency measurements
- Server selection and listing
- Results sharing and URL generation
- JSON and CSV output formats
- Configurable units (bits vs bytes)
- Proxy support
- Minimal or detailed output modes
- Integration with monitoring scripts

## Installation

This role installs speedtest-cli via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Internet connection

## Usage

Common speedtest-cli commands:
- Basic speed test: `speedtest-cli`
- Simple output: `speedtest-cli --simple`
- List servers: `speedtest-cli --list`
- Use specific server: `speedtest-cli --server 1234`
- JSON output: `speedtest-cli --json`
- CSV output: `speedtest-cli --csv`
- Share results: `speedtest-cli --share`
- No upload test: `speedtest-cli --no-upload`
