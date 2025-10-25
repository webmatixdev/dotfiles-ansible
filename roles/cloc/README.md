# cloc (Count Lines of Code)

## Description

cloc (Count Lines of Code) is a command-line tool that counts blank lines, comment lines, and physical lines of source code in many programming languages. It's useful for code analysis and project metrics, supporting over 200 programming languages and providing detailed statistics about code composition.

## Features

- Count lines of code in 200+ programming languages
- Distinguish between source code, comments, and blank lines
- Generate reports in various formats (text, XML, JSON, CSV)
- Compare code statistics between different versions
- Exclude files and directories with flexible patterns
- Handle compressed archives and version control systems
- Detect duplicate files and exclude them from counts

## Installation

This role installs cloc via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common cloc commands:
- Count current directory: `cloc .`
- Count specific files: `cloc file1.py file2.js`
- Exclude directories: `cloc --exclude-dir=node_modules,vendor .`
- Output as JSON: `cloc --json .`
- Compare two versions: `cloc --diff version1/ version2/`
- Count git commits: `cloc --git --diff HEAD~1 HEAD`
