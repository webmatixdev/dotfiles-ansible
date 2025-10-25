# GnuPG

This role installs GnuPG (GNU Privacy Guard), a complete and free implementation of the OpenPGP standard for encryption and digital signatures, including both command-line tools and GUI interface.

## What it does

This role installs both:

**GnuPG CLI:**
- Command-line tools (gpg, gpg-agent, etc.) for cryptographic operations
- File and email encryption using public key cryptography
- Digital signatures for data integrity and authenticity verification
- Key management for generating, importing, and managing cryptographic keys
- Support for various encryption algorithms and key formats

**GPG Suite GUI:**
- User-friendly GUI for GPG key management
- Integration with Mail.app for email encryption and signing
- Finder integration for file encryption/decryption
- GPG Keychain Access for managing keys and certificates
- GPG Services for system-wide encryption services

This provides a complete GPG solution with both powerful command-line capabilities and user-friendly graphical interfaces.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

After installation, GnuPG creates a configuration directory at `~/.gnupg/` where keys and configuration files are stored. You can:
- Generate your first key pair with `gpg --gen-key`
- Import public keys with `gpg --import keyfile`
- Configure gpg-agent for key caching and SSH support
