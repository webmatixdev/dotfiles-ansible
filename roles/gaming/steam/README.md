# Steam

This role installs Steam, a digital distribution platform developed by Valve Corporation for purchasing and playing video games with game library management, multiplayer gaming, and social networking features.

## What it does

Steam provides:
- Digital game library management and organization
- Game purchasing, downloading, and automatic updates
- Multiplayer gaming and matchmaking services
- Social networking features with friends and communities
- Workshop support for user-generated content and mods
- Cloud save synchronization across devices
- Achievement tracking and trading cards
- In-game overlay with web browser and chat
- Big Picture mode for controller and TV gaming

This is particularly useful for PC gamers who want access to a vast library of games and gaming community features.

## Requirements

- macOS with Homebrew installed
- Steam account for full functionality

## Dependencies

- Homebrew

## Configuration

Steam stores its configuration in `~/Library/Application Support/Steam/` including:
- User account data and authentication tokens
- Game library information and installed games
- User preferences and client settings
- Workshop subscriptions and downloaded content
- Friends lists and social data

The application requires Steam account login and manages game installations and updates automatically.
