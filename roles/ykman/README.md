# YubiKey Manager (ykman)

## Description

ykman (YubiKey Manager) is a command-line tool for managing YubiKey devices. It allows you to configure YubiKey features like OTP, FIDO U2F, PIV, and OATH applications. It's essential for managing YubiKey security keys for two-factor authentication and cryptographic operations.

## Features

- Configure YubiKey OTP applications
- Manage FIDO U2F settings
- Handle PIV (Personal Identity Verification) operations
- Manage OATH (TOTP/HOTP) applications
- Device information and status checking

## Installation

This role installs ykman via Homebrew on macOS systems. This installation also includes the ykpers library as a dependency, which provides low-level YubiKey personalization functions.

## Requirements

- macOS
- Homebrew

## Usage

After installation, you can use ykman to:
- List connected YubiKeys: `ykman list`
- Get device info: `ykman info`
- Configure applications: `ykman oath`, `ykman piv`, etc.
