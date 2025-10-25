# shellcheck

## Description

shellcheck is a static analysis tool for shell scripts. It finds bugs in your shell scripts and suggests improvements for better portability, robustness, and correctness. It's widely used by developers to catch common shell scripting mistakes and improve script quality. shellcheck supports bash, sh, dash, and ksh scripts and provides detailed explanations for each issue it finds.

## Features

- Static analysis for shell scripts (bash, sh, dash, ksh)
- Detects syntax errors and potential bugs
- Suggests best practices and improvements
- Checks for common pitfalls and antipatterns
- Provides detailed explanations with wiki links
- Integration with editors and CI/CD pipelines
- Configurable via comments or config files
- Support for multiple output formats

## Installation

This role installs shellcheck via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common shellcheck commands:
- Check a script: `shellcheck script.sh`
- Check with specific shell: `shellcheck -s bash script.sh`
- Exclude specific warnings: `shellcheck -e SC2034 script.sh`
- Output as JSON: `shellcheck -f json script.sh`
- Check multiple files: `shellcheck *.sh`
- Severity levels: `shellcheck -S error script.sh`

You can also add shellcheck directives in your scripts:
```bash
# shellcheck disable=SC2034
# shellcheck source=/dev/null
```
