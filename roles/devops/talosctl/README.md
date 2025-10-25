# talosctl

## Description

talosctl is the command-line client for Talos Linux, a modern Linux distribution built for Kubernetes. It's used to manage Talos clusters, configure nodes, and interact with the Talos API for cluster operations and maintenance. Talos Linux provides a secure, immutable, and minimal operating system designed specifically for running Kubernetes.

## Features

- Manage Talos Linux clusters and nodes
- Bootstrap and configure Kubernetes clusters
- Apply configuration changes to nodes
- Monitor cluster health and status
- Perform maintenance operations
- Secure API-based node management
- Certificate and credential management
- Image and upgrade management

## Installation

This role installs talosctl via Homebrew on macOS systems.

## Requirements

- macOS
- Homebrew

## Usage

Common talosctl commands:
- Generate cluster config: `talosctl gen config cluster-name https://cluster-endpoint:6443`
- Apply configuration: `talosctl apply-config --insecure --nodes <node-ip> --file <config.yaml>`
- Bootstrap cluster: `talosctl bootstrap --nodes <control-plane-ip>`
- Get kubeconfig: `talosctl kubeconfig --nodes <node-ip>`
- Check node status: `talosctl health --nodes <node-ip>`
- Reboot node: `talosctl reboot --nodes <node-ip>`
- Get logs: `talosctl logs --nodes <node-ip> kubelet`
