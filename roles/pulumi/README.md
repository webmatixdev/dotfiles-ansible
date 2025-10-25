# Pulumi

## Description

Pulumi is a modern infrastructure as code platform that allows you to use familiar programming languages (TypeScript, Python, Go, C#, Java) to define and manage cloud infrastructure. Unlike declarative tools, Pulumi lets you use real programming constructs like loops, conditionals, and functions. It provides a unified programming model for cloud resources across AWS, Azure, Google Cloud, Kubernetes, and more.

## Features

- Use familiar programming languages for infrastructure
- Real programming constructs (loops, conditionals, functions)
- Multi-cloud support (AWS, Azure, GCP, Kubernetes, etc.)
- State management and diff-based updates
- Secrets management with encryption
- Policy as code with CrossGuard
- Testing frameworks for infrastructure code
- Rich ecosystem of packages and providers

## Installation

This role installs pulumi via Homebrew on macOS systems and ensures the pulumi configuration directory exists.

## Requirements

- macOS
- Homebrew
- Programming language runtime (Node.js, Python, Go, .NET, or Java)

## Configuration

This role ensures your pulumi configuration directory `~/.pulumi/` exists with proper permissions. Your existing pulumi credentials, stacks, and workspaces are preserved.

## Usage

Common pulumi commands:
- Create new project: `pulumi new <template>`
- Install dependencies: `npm install` (for TypeScript/JavaScript)
- Preview changes: `pulumi preview`
- Deploy infrastructure: `pulumi up`
- Destroy resources: `pulumi destroy`
- View stack outputs: `pulumi stack output`
- Login to backend: `pulumi login`
