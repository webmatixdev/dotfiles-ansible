# FFmpeg

## Description

FFmpeg is a complete, cross-platform solution to record, convert and stream audio and video. It's a powerful command-line tool that can handle almost any multimedia format and provides extensive options for encoding, decoding, filtering, and streaming media files. It supports hundreds of codecs and formats, making it the Swiss Army knife of multimedia processing.

## Features

- Convert between virtually any audio/video formats
- Record audio and video from various sources
- Stream media to networks and platforms
- Apply filters and effects to media files
- Extract audio from video files
- Resize, crop, and manipulate video content
- Batch processing capabilities
- Hardware acceleration support

## Installation

This role installs ffmpeg via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common ffmpeg commands:
- Convert video format: `ffmpeg -i input.mov output.mp4`
- Extract audio: `ffmpeg -i video.mp4 -vn -acodec copy audio.aac`
- Resize video: `ffmpeg -i input.mp4 -vf scale=1280:720 output.mp4`
- Convert to GIF: `ffmpeg -i input.mp4 -vf "fps=10,scale=320:-1" output.gif`
- Compress video: `ffmpeg -i input.mp4 -crf 23 -preset medium output.mp4`
- Stream to file: `ffmpeg -f avfoundation -i "0" -t 10 recording.mov`
