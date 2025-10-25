# Signal

This role installs Signal, a private messenger with end-to-end encryption for secure messaging, voice calls, and video calls across platforms.

## What it does

Signal provides:
- End-to-end encrypted messaging for complete privacy
- Secure voice and video calling capabilities
- Disappearing messages with customizable timers
- Group messaging with advanced privacy controls
- File sharing with encryption protection
- Screen security and app lock features
- Cross-platform synchronization across devices
- Open-source transparency for security verification
- No data collection or user tracking

This is particularly useful for users who prioritize privacy and security in their digital communications.

## Requirements

- macOS with Homebrew installed
- Phone number for account verification

## Dependencies

- Homebrew

## Configuration

Signal stores its configuration in `~/Library/Application Support/Signal/` including:
- Encrypted message databases and conversation history
- User preferences and security settings
- Media files, stickers, and attachments
- Backup and synchronization data
- Application logs and update cache

The application requires phone number verification during initial setup and maintains end-to-end encryption for all communications.
