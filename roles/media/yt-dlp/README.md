# yt-dlp

## Description

yt-dlp is a command-line program to download videos from YouTube and many other sites. It's a fork of youtube-dl with additional features and fixes, supporting hundreds of sites and providing options for audio extraction, format selection, and batch downloads. It's actively maintained with regular updates and improvements for compatibility with video platforms.

## Features

- Download videos from 1000+ sites (YouTube, Vimeo, Twitch, etc.)
- Extract audio in various formats (MP3, AAC, FLAC, etc.)
- Select specific video quality and format
- Download playlists and channels
- Subtitle download and embedding
- Batch downloads from file lists
- Resume interrupted downloads
- Post-processing with FFmpeg integration
- Metadata extraction and embedding

## Installation

This role installs yt-dlp via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- FFmpeg (recommended for post-processing)

## Usage

Common yt-dlp commands:
- Download video: `yt-dlp "https://www.youtube.com/watch?v=VIDEO_ID"`
- Audio only: `yt-dlp -x --audio-format mp3 "URL"`
- Best quality: `yt-dlp -f "best[height<=1080]" "URL"`
- Download playlist: `yt-dlp "https://www.youtube.com/playlist?list=PLAYLIST_ID"`
- With subtitles: `yt-dlp --write-subs --sub-lang en "URL"`
- Batch download: `yt-dlp -a urls.txt`
- List formats: `yt-dlp -F "URL"`
