# ArgoCD CLI

## Description

ArgoCD CLI is the command-line interface for Argo CD, a declarative GitOps continuous delivery tool for Kubernetes. It allows you to manage and deploy applications to Kubernetes clusters using Git repositories as the source of truth. The CLI provides comprehensive functionality to interact with ArgoCD servers, manage applications, and perform GitOps operations.

## Features

- Deploy and manage applications on Kubernetes clusters
- Synchronize applications with Git repositories
- Monitor application health and sync status
- Manage ArgoCD projects, repositories, and clusters
- Handle authentication and RBAC operations
- Perform rollbacks and application lifecycle management

## Installation

This role installs argocd via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew
- Access to Kubernetes clusters (for usage)

## Usage

Common argocd commands:
- Login to ArgoCD: `argocd login <server>`
- List applications: `argocd app list`
- Create application: `argocd app create <app-name>`
- Sync application: `argocd app sync <app-name>`
- Get application status: `argocd app get <app-name>`
- Delete application: `argocd app delete <app-name>`
