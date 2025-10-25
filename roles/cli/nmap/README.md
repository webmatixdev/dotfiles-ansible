# nmap (Network Mapper)

## Description

nmap (Network Mapper) is a network discovery and security auditing tool. It's used for network exploration, port scanning, security testing, and network inventory. It can discover hosts and services on a network, determine operating systems, and identify security vulnerabilities. nmap is widely used by network administrators, security professionals, and penetration testers.

## Features

- Host discovery and network mapping
- Port scanning with various techniques
- Service version detection
- Operating system fingerprinting
- Network vulnerability scanning
- Scriptable with NSE (Nmap Scripting Engine)
- Output in multiple formats (XML, grepable, normal)
- IPv6 support
- Firewall/IDS evasion techniques

## Installation

This role installs nmap via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common nmap commands:
- Basic host scan: `nmap 192.168.1.1`
- Port scan: `nmap -p 80,443 example.com`
- Service detection: `nmap -sV example.com`
- OS detection: `nmap -O example.com`
- Aggressive scan: `nmap -A example.com`
- Network scan: `nmap 192.168.1.0/24`
- Stealth scan: `nmap -sS example.com`

Note: Some nmap features require root privileges for full functionality.
