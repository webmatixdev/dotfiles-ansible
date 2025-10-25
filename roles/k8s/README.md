# Kubernetes (K8s)

This role installs Kubernetes command-line tools including kubectl and useful plugins for managing Kubernetes clusters.

## What it does

This role installs:

**kubectl (kubernetes-cli):**
- Official Kubernetes command-line tool
- Cluster management and resource operations
- Application deployment and scaling
- Configuration and troubleshooting capabilities

**kubectl-cnpg plugin:**
- CloudNativePG (formerly PostgreSQL Operator) plugin for kubectl
- PostgreSQL cluster lifecycle management in Kubernetes
- Database backup and restore operations
- Monitoring and status checking of PostgreSQL clusters
- Configuration management for CloudNativePG deployments

**kubectx:**
- Fast context switching between Kubernetes clusters
- Quick namespace switching with kubens command
- Interactive cluster and namespace selection
- Simplified multi-cluster management workflow

**kubelogin:**
- Azure Active Directory authentication for kubectl
- OIDC authentication plugin for Kubernetes clusters
- Seamless integration with Azure AKS clusters
- Support for various authentication flows (device code, service principal, etc.)

This provides a comprehensive Kubernetes toolkit for general cluster management, specialized PostgreSQL database operations, efficient multi-cluster workflows, and enterprise authentication in cloud-native environments.

## Requirements

- macOS with Homebrew installed

## Dependencies

- Homebrew

## Configuration

After installation, kubectl is available for managing Kubernetes clusters, and the cnpg plugin extends kubectl with `kubectl cnpg <command>` functionality. No additional configuration is required for basic usage, but you'll need access to a Kubernetes cluster for actual operations.
