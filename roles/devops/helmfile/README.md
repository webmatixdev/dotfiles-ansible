# Helmfile

## Description

Helmfile is a declarative spec for deploying Helm charts. It allows you to manage multiple Helm releases in a single file with templating, environments, and secrets management. It's useful for managing complex Kubernetes deployments with multiple charts and provides a higher-level abstraction over Helm for managing releases across different environments.

## Features

- Declarative management of multiple Helm releases
- Environment-specific values and configurations
- Templating support with Go templates
- Secrets management integration
- Dependency management between releases
- Diff and sync capabilities
- Plugin system for extensibility
- Integration with various secret backends

## Installation

This role installs helmfile via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Helm (dependency)
- Access to Kubernetes clusters (for usage)

## Usage

Common helmfile commands:
- Deploy all releases: `helmfile apply`
- Show differences: `helmfile diff`
- Sync specific environment: `helmfile -e production sync`
- List releases: `helmfile list`
- Delete releases: `helmfile destroy`
- Template output: `helmfile template`
