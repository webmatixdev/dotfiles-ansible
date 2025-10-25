# Flux

## Description

Flux is a command-line tool for GitOps with Kubernetes. It's used to manage Kubernetes clusters declaratively using Git repositories as the source of truth. Flux automatically synchronizes your cluster state with your Git repository and can handle continuous deployment workflows. It's part of the CNCF (Cloud Native Computing Foundation) and provides a robust GitOps solution for Kubernetes.

## Features

- GitOps workflow automation for Kubernetes
- Automatic synchronization between Git and cluster state
- Multi-tenancy support with proper isolation
- Progressive delivery with Flagger integration
- Helm and Kustomize support
- Image automation and updates
- Notification and alerting capabilities
- Security scanning and policy enforcement

## Installation

This role installs flux via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Access to Kubernetes clusters (for usage)
- Git repository for GitOps workflow

## Usage

Common flux commands:
- Bootstrap Flux: `flux bootstrap github --owner=<user> --repository=<repo>`
- Check system status: `flux check`
- Create source: `flux create source git <name> --url=<repo-url>`
- Create kustomization: `flux create kustomization <name> --source=<source>`
- Get all resources: `flux get all`
- Suspend/resume: `flux suspend/resume <resource> <name>`
