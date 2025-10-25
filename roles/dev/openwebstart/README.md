# OpenWebStart

This role installs OpenWebStart, an open-source implementation of the Java Web Start technology that allows you to run Java applications directly from web browsers.

## What it does

OpenWebStart provides:
- Open-source replacement for Oracle's deprecated Java Web Start
- Support for JNLP (Java Network Launching Protocol) files
- Browser integration for launching Java applications
- Security management for web-launched Java applications
- Application caching and version management
- Digital signature verification for Java applications
- Cross-platform Java application deployment
- Legacy Java Web Start application compatibility

This is particularly useful for running legacy enterprise Java applications that rely on Java Web Start technology, which Oracle deprecated in Java 11.

## Requirements

- macOS with Homebrew installed
- Java Development Kit (should be installed via the jdk role)

## Dependencies

- Homebrew
- JDK

## Configuration

OpenWebStart works out of the box as a replacement for Java Web Start. It integrates with web browsers to handle JNLP files and provides configuration options for security settings, application caching, and Java runtime management through its control panel.
