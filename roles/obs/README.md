# OBS Studio

This role installs OBS Studio (Open Broadcaster Software), a free and open-source software for video recording and live streaming.

## What it does

OBS Studio provides:
- High-performance real-time video/audio capturing and mixing
- Unlimited number of scenes and sources
- Live streaming to platforms like Twitch, YouTube, Facebook Live
- High-quality video recording in various formats
- Intuitive audio mixer with per-source filters
- Powerful and easy-to-use configuration options
- Modular 'Dock' UI for rearranging layout
- Plugin system for extending functionality

This is particularly useful for content creators, streamers, educators, and anyone who needs to record or broadcast video content.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

OBS Studio stores its configuration in `~/Library/Application Support/obs-studio/` including:
- Scene collections and source configurations
- Plugin settings and custom configurations
- Stream and recording output settings
- Audio and video device preferences
- Global application settings (global.ini)

The application provides extensive customization options through its GUI interface.
