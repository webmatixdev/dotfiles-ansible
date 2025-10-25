# GNU Sed

This role installs gnu-sed, the GNU version of sed (stream editor) - a non-interactive command-line text editor.

## What it does

GNU sed is a stream editor that performs basic text transformations on an input stream (a file or input from a pipeline). The GNU version provides additional features compared to the BSD sed that comes with macOS, including:

- Extended regular expressions support
- Additional commands and options
- Better POSIX compliance
- More robust scripting capabilities

This is particularly useful for developers who need consistent sed behavior across different Unix-like systems or who require GNU sed's extended features.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

After installation, GNU sed is available as `gsed` to avoid conflicts with the system's BSD sed. You can create an alias in your shell configuration if you prefer to use `sed` for the GNU version.
