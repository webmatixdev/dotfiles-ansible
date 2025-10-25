# Podman

This role installs Podman, a daemonless container engine for developing, managing, and running OCI Containers on your Linux System.

## What it does

Podman provides:
- Daemonless container management (no background daemon required)
- Docker-compatible command-line interface
- Rootless container execution for enhanced security
- Pod management capabilities similar to Kubernetes
- OCI-compliant container and image handling
- Integration with systemd for container services
- Network and volume management
- Multi-architecture container support

This is particularly useful for container development and deployment with enhanced security and without requiring root privileges.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

Podman works out of the box after installation. Configuration can be customized for registries, storage, and runtime options.
