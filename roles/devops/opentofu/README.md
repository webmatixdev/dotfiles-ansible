# OpenTofu

## Description

OpenTofu is an open-source infrastructure as code tool that's a fork of Terraform. It allows you to define, provision, and manage infrastructure using declarative configuration files. OpenTofu maintains compatibility with Terraform while being community-driven and open-source. It supports multiple cloud providers and on-premises infrastructure management.

## Features

- Infrastructure as Code (IaC) with declarative syntax
- Multi-cloud and hybrid cloud support
- State management and planning
- Resource dependency management
- Modular and reusable configurations
- Provider ecosystem compatibility with Terraform
- Community-driven development
- Enterprise-grade features without licensing restrictions

## Installation

This role installs opentofu via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common OpenTofu commands:
- Initialize project: `tofu init`
- Plan changes: `tofu plan`
- Apply changes: `tofu apply`
- Destroy infrastructure: `tofu destroy`
- Show current state: `tofu show`
- Format configuration: `tofu fmt`
- Validate configuration: `tofu validate`

Note: OpenTofu uses the same configuration syntax as Terraform (.tf files)
