# Operator SDK

## Description

operator-sdk is a toolkit for building Kubernetes operators. It provides the tools to build, test, and package operators, which are applications that extend Kubernetes to manage complex, stateful applications. It simplifies the development of operators using Go, Ansible, or Helm, and integrates with the Operator Lifecycle Manager (OLM) for deployment and management.

## Features

- Scaffold new operator projects with Go, Ansible, or Helm
- Build and test operators locally
- Generate CustomResourceDefinitions (CRDs) and RBAC
- Integration with Operator Lifecycle Manager (OLM)
- Support for multiple operator types and patterns
- Built-in testing frameworks and utilities
- Operator packaging and distribution tools
- Scorecard for operator validation

## Installation

This role installs operator-sdk via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Go (for Go-based operators)
- Docker (for building operator images)
- kubectl (for Kubernetes cluster access)

## Usage

Common operator-sdk commands:
- Create new operator: `operator-sdk init --domain=example.com --repo=github.com/user/operator`
- Create API: `operator-sdk create api --group=cache --version=v1 --kind=Memcached`
- Build operator: `make docker-build IMG=myoperator:v1.0.0`
- Deploy operator: `make deploy IMG=myoperator:v1.0.0`
- Run tests: `make test`
- Generate manifests: `make manifests`
