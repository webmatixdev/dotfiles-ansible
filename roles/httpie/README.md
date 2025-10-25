# HTTPie

## Description

HTTPie is a command-line HTTP client with an intuitive syntax, JSON support, and user-friendly output formatting. It's designed to make CLI interaction with web services and APIs as human-friendly as possible, serving as a modern alternative to curl and wget for HTTP requests. It features colorized output, JSON handling, and simple syntax.

## Features

- Intuitive command-line syntax
- JSON support with automatic parsing and formatting
- Colorized and formatted output
- Built-in authentication support
- Session management for cookies and headers
- File upload capabilities
- HTTPS certificate verification
- Plugin system for extensibility

## Installation

This role installs httpie via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common HTTPie commands:
- GET request: `http GET api.example.com/users`
- POST JSON data: `http POST api.example.com/users name=john email=john@example.com`
- Custom headers: `http GET api.example.com/users Authorization:"Bearer token"`
- Upload file: `http POST api.example.com/upload < file.json`
- Authentication: `http -a username:password GET api.example.com/protected`
- Save response: `http GET api.example.com/data > response.json`
