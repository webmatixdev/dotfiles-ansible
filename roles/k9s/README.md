# K9s

This role installs K9s, a terminal-based UI for managing Kubernetes clusters that provides a fast way to review and resolve day-to-day issues in Kubernetes.

## What it does

K9s provides:
- Terminal-based Kubernetes cluster management interface
- Real-time cluster resource monitoring and visualization
- Interactive pod, service, and deployment management
- Log viewing and container shell access
- Resource editing and deletion capabilities
- Multi-cluster support with context switching
- Customizable views and shortcuts
- Plugin system for extended functionality

This is particularly useful for Kubernetes administrators and developers who prefer terminal-based tools for cluster management.

## Requirements

- macOS with Homebrew installed
- Kubernetes cluster access

## Dependencies

- Homebrew
- kubectl (Kubernetes CLI)

## Configuration

K9s uses kubectl configuration to access Kubernetes clusters. Customization can be done through config files in ~/.k9s/
