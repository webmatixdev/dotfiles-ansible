# mpv

## Description

mpv is a free, open-source, and cross-platform media player. It supports a wide variety of media file formats, audio and video codecs, and subtitle types. It's known for its high-quality video output, minimal interface, and extensive customization options through configuration files and command-line arguments. mpv is designed to be lightweight yet powerful for media playback.

## Features

- Support for virtually all media formats and codecs
- High-quality video output with advanced scaling algorithms
- Hardware-accelerated video decoding
- Extensive subtitle support including styling
- Audio processing and filters
- Streaming media support (YouTube, etc.)
- Customizable key bindings and interface
- Scriptable with Lua scripts
- Command-line driven with minimal GUI

## Installation

This role installs mpv via Homebrew on macOS systems and manages your custom configuration.

## Requirements

- macOS
- Homebrew

## Configuration

This role manages your mpv configuration file at `~/.config/mpv/mpv.conf` which includes:
- Hardware decoding settings (auto-safe)
- Window sizing preferences (autofit-larger=100%x100%)

## Usage

Common mpv usage:
- Play video: `mpv video.mp4`
- Play from URL: `mpv https://example.com/video.mp4`
- Full screen: Press `f` during playback
- Seek: Arrow keys or `j`/`l` for 10s jumps
- Volume: `9`/`0` keys or mouse wheel
- Subtitles: `v` to cycle subtitle tracks
